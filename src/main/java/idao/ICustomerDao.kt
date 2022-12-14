package idao

import entity.Customer

interface ICustomerDao{
    fun select(account: String, password: String): Customer?
    fun select(customer_name: String): List<Customer>
    fun insert(customer: Customer): Int
    fun delete(customerId: Int): Int
    fun update(customer: Customer): Int
}