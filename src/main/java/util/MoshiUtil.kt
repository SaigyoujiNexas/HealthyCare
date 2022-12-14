package util


import com.squareup.moshi.Moshi
import com.squareup.moshi.adapter
import com.squareup.moshi.kotlin.reflect.KotlinJsonAdapterFactory
import java.lang.ref.WeakReference

object MoshiUtil {
    private var MOSHI: WeakReference<Moshi?>? = null
    fun getMoshiInstance(): Moshi{
        if(MOSHI == null || MOSHI!!.get() == null){
            synchronized(this){
                if(MOSHI == null || MOSHI!!.get() == null){
                    MOSHI = WeakReference(
                        Moshi.Builder()
                            .add(KotlinJsonAdapterFactory())
                            .build())
                }
            }
        }
        return MOSHI!!.get()!!
    }
    @OptIn(ExperimentalStdlibApi::class)
    inline fun <reified T> T.toJson(): String{
        getMoshiInstance().let {
            val adapter = it.adapter<T>();
            return adapter.toJson(this)
        }
    }
}