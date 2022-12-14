package filter

import jakarta.servlet.Filter
import jakarta.servlet.FilterChain
import jakarta.servlet.ServletRequest
import jakarta.servlet.ServletResponse

fun main(){
    TokenFilter(){
        setId(3)
        println("Hello, world")
    }

}

class TokenFilter: Filter {
    private var id: Int = 0
    fun setId(id: Int){
        this.id = id
    }
    constructor(init: TokenFilter.() -> Unit){
        init.invoke(this)
    }
    override fun doFilter(request: ServletRequest, response: ServletResponse, chain: FilterChain) {
    }
}