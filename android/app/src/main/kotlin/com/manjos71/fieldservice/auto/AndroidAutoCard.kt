package com.manjos71.fieldservice.auto

data class AndroidAutoCard(
    val id: String,
    val title: String,
    val subtitle: String,
    val notes: String?,
    val navigationQuery: String,
)

object AndroidAutoCardMapper {
    fun fromFlutterResult(res: Any?): List<AndroidAutoCard> {
        val list = res as? List<*> ?: return emptyList()
        return list.mapNotNull { item ->
            val map = item as? Map<*, *> ?: return@mapNotNull null
            val id = map["id"]?.toString() ?: return@mapNotNull null
            val title = map["title"]?.toString() ?: return@mapNotNull null
            val subtitle = map["subtitle"]?.toString() ?: ""
            val notes = map["notes"]?.toString()
            val navigationQuery = map["navigationQuery"]?.toString() ?: subtitle
            AndroidAutoCard(
                id = id,
                title = title,
                subtitle = subtitle,
                notes = notes,
                navigationQuery = navigationQuery,
            )
        }
    }
}
