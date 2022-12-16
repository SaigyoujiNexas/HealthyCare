package idao

import entity.Blog
import entity.Comment

interface IBlogDao {
    fun insert(blog: Blog): Int
    fun delete(id: Int): Int
    fun update(blog: Blog): Int
    fun delete(blog: Blog): Int
    fun select(name: String): List<Blog>

    fun getComments(blog: Blog): List<Comment>
}