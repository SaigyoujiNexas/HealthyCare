package util

data class BaseResponse<T>(
    val code: Int,
    val data: T,
    val message: String
)
object Response {
    fun createResponse(status: RequestStatus) = when (status) {
        is RequestStatus.Success<*> -> BaseResponse(200, status.message, "成功")
        is RequestStatus.Failed<*> -> BaseResponse(500, status.message, "失败")
    }
}