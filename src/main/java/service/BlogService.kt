package service

import dao.BlogDao
import entity.Blog
import util.RequestStatus
import util.tokenMap
import java.lang.IllegalArgumentException

class BlogService {
    fun search(key: String): RequestStatus {
        return BlogDao().run {
            try {
                RequestStatus.Success(select(key.trim()))
            }catch (e: Throwable){
                RequestStatus.Failed(e.localizedMessage)
            }
        }
    }
    fun add(blog: Blog, token: String): RequestStatus {
        return BlogDao().run {
            try {
                if(!tokenMap.containsKey(token))
                    throw IllegalArgumentException("token失效或未登录")
                when(insert(blog)){
                    -1 -> RequestStatus.Failed("添加失败")
                    else -> RequestStatus.Success(blog)
                }
            }catch (e: Throwable){
                RequestStatus.Failed(e.localizedMessage)
            }
        }
    }
    fun getComments(blog_id: Int, token: String):RequestStatus{
        return BlogDao().run {
        try {
            if (!tokenMap.contains(token))
                throw IllegalArgumentException("token失效或未登录")
            RequestStatus.Success(getComments(Blog(blog_id = blog_id.toLong())))
        }catch (e: Throwable){
            RequestStatus.Failed(e.localizedMessage)
        }
        }
    }
}