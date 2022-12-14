package entity

import java.io.Serializable

data class User(
    val userId: Int,
    val userName: String,
    val phone: String,
    val password: String,
    val portrait: String,
    val age: Int = 0,
    val gender: String = "F",
    val email: String = "",
    val introduce: String = "",
    val balance: String = ""
): Serializable

internal fun User.generateToken(): String{
    val timeInMillis = System.currentTimeMillis()
    return "$timeInMillis@$userId"
}