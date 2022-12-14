package entity

import java.util.Base64

data class Customer(
    var customer_id: Int = -1,
    var customer_name: String? = null,
    var gender: Int = 1,
    var email: String? = null,
    var tel: String? = null,
    var uid: Int? = null,
    var password: String? = null,
    var status: Int = 1,
    val balance: Double = 1000.0,
    val pay_password: String? = null
)
fun Customer.generateToken(): String{
    val timeInMillis = System.currentTimeMillis()
    return "$customer_id@$timeInMillis"
}
