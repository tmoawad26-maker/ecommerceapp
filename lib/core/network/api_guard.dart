import 'package:ecommerceapp/core/network/api_exception.dart';
import 'package:ecommerceapp/core/network/api_result.dart';

Future<ApiResult<T>> guard<T>(Future<T> Function() action) async {
  try {
    return ApiResult<T>.success(await action());
  } on Object catch (error) {
    return ApiResult<T>.failure(ApiException.handleException(error).message);
  }
}
