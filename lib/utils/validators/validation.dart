class TValidator {
  // Empty Text Validation
  static String? validateEmptyText(String? fieldName, String? value){
    if(value == null || value.isEmpty){
      return '$fieldName is required.';
    }
    return null;
  }


  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    // final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  final emailRegExp = RegExp(r'^[\w.]+@gmail\.com$');


    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address';
    }

    return null;
  }

  static String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return 'Password is required';
    }

    if(value.length < 6){
      return 'Password must be at least 6 character long.';
    }

    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'password must contain at leat one capital letter';
    }

    if(!value.contains(RegExp(r'[0-9]'))){
      return 'password must contain at leat one number';
    }

    if(!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))){
      return 'password must contain at leat one special charcter';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value){
    if(value == null || value.isEmpty){
      return 'PhoneNUmber  is required';
    }

    final phoneRegExp = RegExp(r'^\d{10}$');

    if(!phoneRegExp.hasMatch(value)){
      return 'Invalid phone number format (10 digits required)';
    }

    return null;
  }
}
