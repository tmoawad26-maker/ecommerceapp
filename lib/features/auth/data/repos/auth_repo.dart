import 'package:ecommerceapp/core/network/api_exception.dart';
import 'package:ecommerceapp/core/network/api_guard.dart';
import 'package:ecommerceapp/core/network/api_result.dart';
import 'package:ecommerceapp/features/auth/data/datasources/auth_remote_data_source.dart';

abstract class AuthRepo {
  Future<ApiResult> signIn(Map<String, dynamic> body);
}

class AuthRepoImpl implements AuthRepo {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepoImpl(this.authRemoteDataSource);

  @override
  Future<ApiResult> signIn(Map<String, dynamic> body) async {
    return guard(() => authRemoteDataSource.signIn(body));
  }
}
