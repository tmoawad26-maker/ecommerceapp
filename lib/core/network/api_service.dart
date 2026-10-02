import 'package:dio/dio.dart';
import 'package:ecommerceapp/core/network/api_constant.dart';
import 'package:ecommerceapp/core/network/error_call_adapter.dart';

import 'package:retrofit/retrofit.dart';

import '../../features/auth/data/models/responses/auth_response.dart';

part 'api_service.g.dart';

@RestApi(callAdapter: ErrorCallAdapter)
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @POST(ApiConstant.signIn)
  Future<AuthResponse> signIn(@Body() Map<String, dynamic> data);
}
