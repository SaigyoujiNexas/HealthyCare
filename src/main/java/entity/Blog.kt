package entity

import java.sql.Time

data class Blog(
    val doctor_id: Int,
    var blog_id: Long = -1,
    val type: Int,
    val title: String,
    val title_image: String? = null,
    val content: String,
    val post_time: String
)
