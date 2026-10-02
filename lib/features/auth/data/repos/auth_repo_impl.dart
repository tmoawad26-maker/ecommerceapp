import 'package:ecommerceapp/core/network/api_exception.dart';
import 'package:ecommerceapp/core/network/token_store.dart';
import 'package:ecommerceapp/core/utils/app_strings.dart';
import 'package:ecommerceapp/core/utils/from_mapper.dart';
import 'package:ecommerceapp/features/auth/domain/entities/login_request_entity.dart';
import 'package:ecommerceapp/features/auth/domain/entities/register_request_entity.dart';
import 'package:ecommerceapp/features/auth/domain/entities/user_entity.dart';

import '../../../../core/network/api_guard.dart';
import '../../../../core/network/api_result.dart';
import '../datasources/remote_data_source/auth_remote_data_source.dart';
import '../../domain/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthRemoteDataSource authRemoteDataSource;
  final TokenStore _tokenStore;

  AuthRepoImpl(this.authRemoteDataSource, this._tokenStore);

  @override
  Future<ApiResult<UserEntity>> signIn(LoginRequestEntity request) async {
    return guard<UserEntity>(() async {
      final authResponse = await authRemoteDataSource.signIn(
        request.fromDomain(),
      );
      final token = authResponse.token;
      if (token == null || token.isEmpty) {
        throw ApiException(AppStrings.unexpectedError);
      }
      await _tokenStore.saveToken(token);
      return authResponse.toDomain();
    });
  }

  @override
  Future<ApiResult<UserEntity>> signUp(RegisterRequestEntity request) async {
    return guard<UserEntity>(() async {
      final authResponse = await authRemoteDataSource.signUp(
        request.fromDomainSignUp(),
      );
      final token = authResponse.token;
      if (token == null || token.trim().isEmpty) {
        throw ApiException(AppStrings.unexpectedError);
      }
      await _tokenStore.saveToken(token);
      return authResponse.toDomain();
    });
  }
}
