package com.manjos71.fieldservice.auto

import android.net.Uri
import androidx.car.app.CarContext
import androidx.car.app.CarToast
import androidx.car.app.constraints.ConstraintManager
import androidx.car.app.Screen
import androidx.car.app.model.Action
import androidx.car.app.model.ActionStrip
import androidx.car.app.model.CarText
import androidx.car.app.model.ItemList
import androidx.car.app.model.ListTemplate
import androidx.car.app.model.Row
import androidx.car.app.model.Template
import java.net.URLEncoder

enum class PeopleListType {
    INTERESTED,
    BIBLE_STUDY,
}

class PeopleListScreen(
    carContext: CarContext,
    private val type: PeopleListType,
) : Screen(carContext) {

    private var isLoading: Boolean = true
    private var requested: Boolean = false
    private var items: List<AndroidAutoCard> = emptyList()

    override fun onGetTemplate(): Template {
        if (!requested) {
            requested = true
            load()
        }

        val listBuilder = ItemList.Builder()
            .setNoItemsMessage("Nenhum registro encontrado")

        // O template limita o número de linhas enquanto o carro está em movimento.
        val limit = try {
            carContext.getCarService(ConstraintManager::class.java)
                .getContentLimit(ConstraintManager.CONTENT_LIMIT_TYPE_LIST)
        } catch (_: Throwable) {
            6
        }

        for (item in items.take(limit)) {
            val rowBuilder = Row.Builder()
                .setTitle(item.title)
                .addText(item.subtitle)

            val notes = item.notes?.trim().orEmpty()
            if (notes.isNotEmpty()) {
                rowBuilder.addText(notes)
            }

            rowBuilder.setOnClickListener { navigateTo(item) }
            listBuilder.addItem(rowBuilder.build())
        }

        val title = when (type) {
            PeopleListType.INTERESTED -> "Interessados"
            PeopleListType.BIBLE_STUDY -> "Estudos"
        }

        val refreshAction = Action.Builder()
            .setTitle("Atualizar")
            .setOnClickListener { load() }
            .build()

        val templateBuilder = ListTemplate.Builder()
            .setTitle(title)
            .setHeaderAction(Action.BACK)
            .setActionStrip(ActionStrip.Builder().addAction(refreshAction).build())

        if (isLoading) {
            templateBuilder.setLoading(true)
        } else {
            templateBuilder.setSingleList(listBuilder.build())
        }

        return templateBuilder.build()
    }

    private fun navigateTo(item: AndroidAutoCard) {
        try {
            val query = URLEncoder.encode(item.navigationQuery, "UTF-8")
            val intent = android.content.Intent(CarContext.ACTION_NAVIGATE)
                .setData(Uri.parse("geo:0,0?q=$query"))
            carContext.startCarApp(intent)
        } catch (_: Throwable) {
            CarToast.makeText(carContext, "Nenhum app de navegação disponível", CarToast.LENGTH_LONG).show()
        }
    }

    private fun load() {
        isLoading = true
        items = emptyList()
        invalidate()

        val method = when (type) {
            PeopleListType.INTERESTED -> "getInterestedCards"
            PeopleListType.BIBLE_STUDY -> "getBibleStudyCards"
        }

        // Callback sempre na thread principal.
        AndroidAutoFlutterBridge.getInstance(carContext).fetchCards(method) { result ->
            items = result
            isLoading = false
            invalidate()
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
