sealed class ApiResult<T> {
  const ApiResult();
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.failure(String message) = Failure<T>;

  /// create when method handle exceptions
  R when<R>({
    required R Function(T data) success,
    required R Function(String message) failure,
  }) {
    return switch (this) {
      Success<T>(:final data) => success(data),
      Failure<T>(:final message) => failure(message),
    };
  }
}

final class Success<T> extends ApiResult<T> {
  const Success(this.data);
  final T data;
}

final class Failure<T> extends ApiResult<T> {
  const Failure(this.message);
  final String message;
}
