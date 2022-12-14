package service

import dao.CustomerDao
import entity.Customer
import entity.generateToken
import util.RequestStatus
import util.tokenMap

class AccountService {
    private val customerDao =  CustomerDao()

    //登录功能
    fun login(account: String, passwd: String) : RequestStatus{
        return customerDao.select(account, passwd)?.let {
            it.generateToken().let {token ->
                tokenMap[token] = it.customer_id.toString()
                RequestStatus.Success(token)
            }
        }?:RequestStatus.Failed("登陆失败")
    }
    fun register(name: String, tel: String?, email: String?, password: String): RequestStatus {
        if(tel == null && email == null){
            return RequestStatus.Failed("输入不能为空")
        }
        return Customer(customer_name = name, tel = tel, email = email, password = password).run {
            val id = customerDao.insert(this)
            if(id == -1){
                RequestStatus.Failed("注册失败")
            }else{
                RequestStatus.Success(this.copy(customer_id = id))
            }
        }
    }
}