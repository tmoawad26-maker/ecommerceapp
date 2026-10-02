import 'package:ecommerceapp/core/network/api_service.dart';

import '../models/responses/auth_response.dart';

class AuthRemoteDataSource {
  final ApiService apiService;

  AuthRemoteDataSource(this.apiService);
  Future<AuthResponse> signIn(Map<String, dynamic> body) {
    return apiService.signIn(body);
  }
}
