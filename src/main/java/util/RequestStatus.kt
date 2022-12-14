package util

sealed interface RequestStatus {
    class Success<T>(val message: T): RequestStatus;
    class Failed<T>(val message: T): RequestStatus;
}