package com.manjos71.fieldservice.auto

import android.net.Uri
import androidx.car.app.CarContext
import androidx.car.app.Screen
import androidx.car.app.model.Action
import androidx.car.app.model.ActionStrip
import androidx.car.app.model.CarText
import androidx.car.app.model.ItemList
import androidx.car.app.model.ListTemplate
import androidx.car.app.model.Row
import androidx.car.app.model.Template
import java.net.URLEncoder
import java.util.concurrent.Executors

enum class PeopleListType {
    INTERESTED,
    BIBLE_STUDY,
}

class PeopleListScreen(
    carContext: CarContext,
    private val type: PeopleListType,
) : Screen(carContext) {

    private val executor = Executors.newSingleThreadExecutor()
    private var isLoading: Boolean = true
    private var items: List<AndroidAutoCard> = emptyList()

    override fun onGetTemplate(): Template {
        if (isLoading) {
            loadItemsIfNeeded()
        }

        val listBuilder = ItemList.Builder()
            .setNoItemsMessage("Nenhum registro encontrado")

        for (item in items) {
            val rowBuilder = Row.Builder()
                .setTitle(item.title)
                .addText(item.subtitle)

            val notes = item.notes?.trim().orEmpty()
            if (notes.isNotEmpty()) {
                rowBuilder.addText(notes)
            }

            rowBuilder.setOnClickListener {
                val query = URLEncoder.encode(item.navigationQuery, "UTF-8")
                val uri = Uri.parse("geo:0,0?q=$query")
                val intent = android.content.Intent(androidx.car.app.CarContext.ACTION_NAVIGATE)
                    .setData(uri)
                carContext.startCarApp(intent)
            }
            listBuilder.addItem(rowBuilder.build())
        }

        val title = when (type) {
            PeopleListType.INTERESTED -> "Interessados"
            PeopleListType.BIBLE_STUDY -> "Estudos"
        }

        val refreshAction = Action.Builder()
            .setTitle("Atualizar")
            .setOnClickListener {
                forceReload()
            }
            .build()

        val actionStrip = ActionStrip.Builder()
            .addAction(refreshAction)
            .build()

        val templateBuilder = ListTemplate.Builder()
            .setTitle(title)
            .setHeaderAction(Action.BACK)
            .setActionStrip(actionStrip)

        if (isLoading) {
            templateBuilder.setLoading(true)
        } else {
            templateBuilder.setSingleList(listBuilder.build())
        }

        return templateBuilder.build()
    }

    private fun forceReload() {
        isLoading = true
        items = emptyList()
        invalidate()
    }

    private fun loadItemsIfNeeded() {
        if (!isLoading) return

        executor.execute {
            try {
                val method = when (type) {
                    PeopleListType.INTERESTED -> "getInterestedCards"
                    PeopleListType.BIBLE_STUDY -> "getBibleStudyCards"
                }

                val bridge = AndroidAutoFlutterBridge.getInstance(carContext)
                val result = bridge.fetchCards(method)
                items = result
            } catch (_: Throwable) {
                items = emptyList()
            } finally {
                isLoading = false
                invalidate()
            }
        }
    }
}

class DetailsScreen(
    carContext: CarContext,
    private val item: AndroidAutoCard,
) : Screen(carContext) {

    override fun onGetTemplate(): Template {
        val navAction = Action.Builder()
            .setTitle("Navegar")
            .setOnClickListener {
                val query = URLEncoder.encode(item.navigationQuery, "UTF-8")
                val uri = Uri.parse("geo:0,0?q=$query")
                val intent = android.content.Intent(androidx.car.app.CarContext.ACTION_NAVIGATE)
                    .setData(uri)
                carContext.startCarApp(intent)
            }
            .build()

        val actionStrip = ActionStrip.Builder()
            .addAction(navAction)
            .build()

        val listBuilder = ItemList.Builder()

        val notes = item.notes?.trim().orEmpty()
        if (notes.isNotEmpty()) {
            listBuilder.addItem(
                Row.Builder()
                    .setTitle("Notas")
                    .addText(CarText.Builder(notes).build())
                    .build()
            )
        }

        listBuilder.addItem(
            Row.Builder()
                .setTitle("Endereço")
                .addText(item.navigationQuery)
                .build()
        )

        return ListTemplate.Builder()
            .setTitle(item.title)
            .setHeaderAction(Action.BACK)
            .setSingleList(listBuilder.build())
            .setActionStrip(actionStrip)
            .build()
    }
}
