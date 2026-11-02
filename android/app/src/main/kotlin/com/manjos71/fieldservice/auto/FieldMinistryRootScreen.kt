package com.manjos71.fieldservice.auto

import androidx.car.app.CarContext
import androidx.car.app.Screen
import androidx.car.app.model.Action
import androidx.car.app.model.ItemList
import androidx.car.app.model.ListTemplate
import androidx.car.app.model.Row
import androidx.car.app.model.Template

class FieldMinistryRootScreen(carContext: CarContext) : Screen(carContext) {

    override fun onGetTemplate(): Template {
        val list = ItemList.Builder()
            .addItem(
                Row.Builder()
                    .setTitle("Interessados")
                    .setOnClickListener {
                        screenManager.push(PeopleListScreen(carContext, PeopleListType.INTERESTED))
                    }
                    .build()
            )
            .addItem(
                Row.Builder()
                    .setTitle("Estudos")
                    .setOnClickListener {
                        screenManager.push(PeopleListScreen(carContext, PeopleListType.BIBLE_STUDY))
                    }
                    .build()
            )
            .build()

        return ListTemplate.Builder()
            .setTitle("Field Ministry")
            .setHeaderAction(Action.APP_ICON)
            .setSingleList(list)
            .build()
    }
}
