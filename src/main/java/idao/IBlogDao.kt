package idao

import entity.Blog

interface IBlogDao {
    fun insert(blog: Blog): Int
    fun delete(id: Int): Int
    fun update(blog: Blog): Int
    fun delete(blog: Blog): Int
    fun select(name: String): List<Blog>
}