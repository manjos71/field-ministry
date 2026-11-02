package com.manjos71.fieldservice.auto

import androidx.car.app.Screen
import androidx.car.app.Session

class FieldMinistryCarSession : Session() {
    override fun onCreateScreen(intent: android.content.Intent): Screen {
        return FieldMinistryRootScreen(carContext)
    }
}
