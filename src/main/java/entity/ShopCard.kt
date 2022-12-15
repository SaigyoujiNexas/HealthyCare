package entity

data class ShopCard(
     var id: Int = -1,
     var merchandise_id: Int,
     var merchandise_name: String,
     var num: Int,
     var price: String,
     var photo: String,
     var effect: String = "",
     var description: String = "",
     var status: Int = 1
)
