import 'package:ecommerceapp/core/network/api_exception.dart';
import 'package:retrofit/retrofit.dart';

class ErrorCallAdapter<T> extends CallAdapter<Future<T>, Future<T>> {
  @override
  Future<T> adapt(Future<T> Function() call) async {
    try {
      return await call();
    } on Object catch (e) {
      throw ApiException.handleException(e);
    }
  }
}
