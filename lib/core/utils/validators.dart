import 'package:ecommerceapp/core/utils/app_strings.dart';

abstract final class Validators {
  Validators._();

  static final RegExp _requiredFieldRegex = RegExp(r'\S');
  static final RegExp _userNameRegex = RegExp(r'^.{3,}$');
  static final RegExp _emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
  static final RegExp _mobileNumberRegex = RegExp(r'^\+?[0-9]{10,15}$');
  static final RegExp _passwordRegex = RegExp(r'^.{6,}$');

  static String? requiredField(String? value) {
    if (value == null || !_requiredFieldRegex.hasMatch(value.trim())) {
      return AppStrings.requiredField;
    }
    return null;
  }

  static String? userName(String? value) {
    final requiredError = requiredField(value);
    if (requiredError != null) {
      return requiredError;
    }
    if (!_userNameRegex.hasMatch(value!.trim())) {
      return AppStrings.nameMinLength;
    }
    return null;
  }

  static String? email(String? value) {
    final requiredError = requiredField(value);
    if (requiredError != null) {
      return requiredError;
    }
    if (!_emailRegex.hasMatch(value!.trim())) {
      return AppStrings.validEmail;
    }
    return null;
  }

  static String? mobileNumber(String? value) {
    final requiredError = requiredField(value);
    if (requiredError != null) {
      return requiredError;
    }
    if (!_mobileNumberRegex.hasMatch(value!.trim())) {
      return AppStrings.validMobileNumber;
    }
    return null;
  }

  static String? password(String? value) {
    final requiredError = requiredField(value);
    if (requiredError != null) {
      return requiredError;
    }
    if (!_passwordRegex.hasMatch(value!)) {
      return AppStrings.passwordMinLength;
    }
    return null;
  }
}
