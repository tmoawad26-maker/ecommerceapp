import 'package:ecommerceapp/features/auth/data/models/requests/login_request.dart';
import 'package:ecommerceapp/features/auth/domain/entities/login_request_entity.dart';

extension FromMapper on LoginRequestEntity{
 LoginRequest fromDomain(){
    return LoginRequest(email: email,password: password);
  }
}