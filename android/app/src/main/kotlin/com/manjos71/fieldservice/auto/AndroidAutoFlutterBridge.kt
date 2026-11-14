package com.manjos71.fieldservice.auto

import android.content.Context
import android.os.Handler
import android.os.Looper
import io.flutter.FlutterInjector
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

/**
 * Ponte entre o Android Auto e o Dart. Todo o acesso ao FlutterEngine
 * (criação e invokeMethod) acontece na thread principal, como o Flutter exige.
 */
class AndroidAutoFlutterBridge private constructor(
    context: Context,
) {
    private val appContext = context.applicationContext
    private val mainHandler = Handler(Looper.getMainLooper())
    private var engine: FlutterEngine? = null
    private var channel: MethodChannel? = null

    private fun ensureEngine(): MethodChannel {
        channel?.let { return it }

        val loader = FlutterInjector.instance().flutterLoader()
        if (!loader.initialized()) {
            loader.startInitialization(appContext)
            loader.ensureInitializationComplete(appContext, null)
        }

        val e = FlutterEngine(appContext)
        GeneratedPluginRegistrant.registerWith(e)

        // androidAutoMain está em outra biblioteca: o URI precisa ser informado.
        val entrypoint = DartExecutor.DartEntrypoint(
            loader.findAppBundlePath(),
            ENTRYPOINT_LIBRARY,
            ENTRYPOINT_FUNCTION,
        )
        e.dartExecutor.executeDartEntrypoint(entrypoint)

        engine = e
        return MethodChannel(e.dartExecutor.binaryMessenger, CHANNEL_NAME).also {
            channel = it
        }
    }

    /** Assíncrono; [callback] é sempre chamado na thread principal. */
    fun fetchCards(method: String, callback: (List<AndroidAutoCard>) -> Unit) {
        mainHandler.post { invoke(method, attempt = 0, callback = callback) }
    }

    private fun invoke(method: String, attempt: Int, callback: (List<AndroidAutoCard>) -> Unit) {
        val ch = try {
            ensureEngine()
        } catch (_: Throwable) {
            callback(emptyList())
            return
        }

        var done = false
        val timeout = Runnable {
            if (!done) {
                done = true
                callback(emptyList())
            }
        }
        mainHandler.postDelayed(timeout, TIMEOUT_MS)

        fun finish(cards: List<AndroidAutoCard>) {
            if (done) return
            done = true
            mainHandler.removeCallbacks(timeout)
            callback(cards)
        }

        ch.invokeMethod(method, null, object : MethodChannel.Result {
            override fun success(result: Any?) {
                finish(AndroidAutoCardMapper.fromFlutterResult(result))
            }

            override fun error(code: String, message: String?, details: Any?) {
                finish(emptyList())
            }

            override fun notImplemented() {
                // O isolate Dart ainda está iniciando e o handler não foi registrado: tenta de novo.
                if (done) return
                if (attempt < MAX_RETRIES) {
                    done = true
                    mainHandler.removeCallbacks(timeout)
                    mainHandler.postDelayed(
                        { invoke(method, attempt + 1, callback) },
                        RETRY_DELAY_MS,
                    )
                } else {
                    finish(emptyList())
                }
            }
        })
    }

    companion object {
        const val CHANNEL_NAME = "field_ministry/android_auto"
        private const val ENTRYPOINT_LIBRARY =
            "package:field_ministry/android_auto/android_auto_entrypoint.dart"
        private const val ENTRYPOINT_FUNCTION = "androidAutoMain"
        private const val TIMEOUT_MS = 10_000L
        private const val RETRY_DELAY_MS = 700L
        private const val MAX_RETRIES = 6

        @Volatile
        private var instance: AndroidAutoFlutterBridge? = null

        fun getInstance(context: Context): AndroidAutoFlutterBridge {
            return instance ?: synchronized(this) {
                instance ?: AndroidAutoFlutterBridge(context).also { instance = it }
            }
        }
    }
}
