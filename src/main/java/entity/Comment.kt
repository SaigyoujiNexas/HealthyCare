package entity

import java.util.*

data class Comment(
    var comment_id: Int = -1,
    var content: String = "",
    var post_time: Date = Date(),
    var comments: List<Comment> = emptyList()
)
