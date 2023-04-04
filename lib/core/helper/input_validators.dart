import 'package:guitar_shop/core/extenstions/extenstions.dart';

class InputValidators {
  static String? mobileNumberValidator(String? mobileNumber) {
    // r'(^(?:[+0]9)?[0-9]{10,12}$)'
    if (mobileNumber != null &&
        RegExp(r'(\+977)?[9][6-9]\d{8}').hasMatch(mobileNumber) &&
        mobileNumber.length == 10) {
      return null;
    }
    return "Please enter valid phone number";
  }

  static String? emailValidator(String? email) {
    if (email != null &&
        RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
            .hasMatch(email)) {
      return null;
    }
    return 'Invalid email address';
  }

  static String? passwordValidator(String? password) {
    if (password == null ||
        password.length <= 6 ||
        !password.containesDigit()) {
      return 'Atleast 6 characters with 1 number';
    }
    return null;
  }

  static String? confirlPasswordValidator(
      String? password, String? confirmPassword) {
    if (password == null ||
        password.length <= 6 ||
        !password.containesDigit()) {
      return 'Atleast 6 characters with 1 number';
    } else if (password != confirmPassword) {
      return "password does not match";
    }
    return null;
  }

  static String? commonValidation(String? value) {
    if (value == null || value == '' || value.length < 2 || value.length > 60) {
      return "Required*";
    }
    return null;
  }
}
