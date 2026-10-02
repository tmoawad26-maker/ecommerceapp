import 'package:dio/dio.dart';
import 'package:ecommerceapp/core/network/api_constant.dart';

/// Top level function
const Duration _duration = Duration(seconds: 3);
Dio createDio() {
  return Dio(
    BaseOptions(
      baseUrl: ApiConstant.baseUrl,
      connectTimeout: _duration,
      receiveTimeout: _duration,
      sendTimeout: _duration,
    ),
  );
}
