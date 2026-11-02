package com.manjos71.fieldservice.auto

import android.content.Context
import io.flutter.FlutterInjector
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.plugins.GeneratedPluginRegistrant
import io.flutter.plugin.common.MethodChannel
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit

class AndroidAutoFlutterBridge private constructor(
    private val context: Context,
) {

    private val engine: FlutterEngine = FlutterEngine(context.applicationContext)
    private val channel: MethodChannel

    init {
        val loader = FlutterInjector.instance().flutterLoader()
        if (!loader.initialized()) {
            loader.startInitialization(context.applicationContext)
            loader.ensureInitializationComplete(context.applicationContext, null)
        }

        GeneratedPluginRegistrant.registerWith(engine)

        val appBundlePath = loader.findAppBundlePath()
        val entrypoint = DartExecutor.DartEntrypoint(appBundlePath, "androidAutoMain")
        engine.dartExecutor.executeDartEntrypoint(entrypoint)

        channel = MethodChannel(engine.dartExecutor.binaryMessenger, CHANNEL_NAME)
    }

    fun fetchCards(method: String): List<AndroidAutoCard> {
        val latch = CountDownLatch(1)
        var result: List<AndroidAutoCard> = emptyList()

        channel.invokeMethod(method, null, object : MethodChannel.Result {
            override fun success(res: Any?) {
                result = AndroidAutoCardMapper.fromFlutterResult(res)
                latch.countDown()
            }

            override fun error(errorCode: String, errorMessage: String?, errorDetails: Any?) {
                latch.countDown()
            }

            override fun notImplemented() {
                latch.countDown()
            }
        })

        latch.await(8, TimeUnit.SECONDS)
        return result
    }

    companion object {
        const val CHANNEL_NAME = "field_ministry/android_auto"

        @Volatile
        private var instance: AndroidAutoFlutterBridge? = null

        fun getInstance(context: Context): AndroidAutoFlutterBridge {
            return instance ?: synchronized(this) {
                instance ?: AndroidAutoFlutterBridge(context).also { instance = it }
            }
        }
    }
}
