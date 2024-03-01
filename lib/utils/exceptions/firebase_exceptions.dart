class TFirebaseException implements Exception {
  // The error code associated with the exception
  final String code;

  // Constructor that takes an error code
  TFirebaseException(this.code);

  // Get the corresponding error message based on the error code
  String get message {
    switch (code) {
      case 'unknown':
        return 'An Unknown Firebase error occurred. Please try again.';
      case 'invalid-custom-token':
        return 'The custom token format is incorrect. Please check your custom token.';
      case 'custom-token-mismatch':
        return 'The custom token provided does not match the expected format. Please check your custom token.';
      case 'email-already-in-use':
        return 'The email address is already registered. Please use a different email.';
      case 'invalid-email':
        return 'The email address provided is invalid. Please enter a valid email.';
      case 'weak-password':
        return 'The password is too weak. Please choose a stronger password.';
      case 'user-disabled':
        return 'The user account is disabled. Please contact support for assistance.';
      case 'user-not-found':
        return 'Invalid login details. User not found.';
      case 'wrong-password':
        return 'Incorrect Password. Please check your password and try again.';
      case 'invalid-verification-code':
        return 'Invalid verification code. Please enter a valid code.';
      case 'invalid-verification id':
        return 'Invalid verification ID. Please request a new verification code.';
      case 'quota-exceeded':
        return 'Quota exceeded. Please try again later.';
      case 'email-already-exists':
        return 'The email address already exists. Please use a different email.';
      case 'provider-already-linked':
        return 'The account is already linked with another provider.';
      case 'requires-recent-login':
        return 'The operation is sensitive and requires recent authentication. Please log in again.';
      case 'credential-already-in-use':
        return 'This credential is already associated with a different user account.';
      case 'user-mismatch':
        return 'The supplied credentials do not correspond to the previously signed-in user.';
      // Add more cases as needed
      default:
        return 'An unknown error occurred. Please try again later.';
    }
  }
}
