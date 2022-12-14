package dao

import entity.Blog
import idao.IBlogDao
import util.DBUtil
import java.text.SimpleDateFormat

class BlogDao: IBlogDao {
    override fun insert(blog: Blog): Int{
        var result = -1
        try{
            blog.apply {
                val sql = "INSERT INTO blog" +
                        "(doctor_id, title, title_image, type, content, post_time)" +
                        "values($doctor_id, '$title', '$title_image', $type, '$content', '$post_time')"
                val db = DBUtil()
                db.openConnection()
                val rst = db.getInsertObjectIDs(sql)
                if(rst.first()) blog.blog_id = rst.getLong(1)
                db.close(rst)
                db.close()

                result = blog.blog_id.toInt();
            }
        }catch (e: Throwable){
            e.printStackTrace()
        }
        return result
    }

    override fun delete(id: Int): Int {
        return 0;
    }

    override fun update(blog: Blog): Int {
        return 0;
    }

    override fun delete(blog: Blog): Int {

        return 0;
    }

    override fun select(name: String): List<Blog> {
        val sql =
            if (name.isEmpty()) "SELECT * FROM blog"
            else "SELECT * FROM blog WHERE title LIKE '$name'"
        return DBUtil().run {
            openConnection()
            val res = execQuery(sql)
            val list = mutableListOf<Blog>()
            while (res.next()) {
                val blog = res.run {
                    Blog(
                        blog_id = getLong("blog_id"),
                        title = getString("title"),
                        title_image = getString("title_image"),
                        type = getInt("type"),
                        content = getString("content"),
                        doctor_id = getInt("doctor_id"),
                        post_time = getDate("post_time").let { date ->
                            val format = SimpleDateFormat("yyyy-MM-dd")
                            format.format(date)
                        }
                    )
                }
                list += blog
            }
            list
        }
    }
}