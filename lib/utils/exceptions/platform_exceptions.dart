class TPlatformException implements Exception {
  final String code;

  TPlatformException(this.code);

  String get message {
    switch (code) {
      case 'UNKNOWN':
        return 'An unknown platform exception occurred.';
      case 'INVALID_ARGUMENT':
        return 'An invalid argument was provided.';
      case 'DEADLINE_EXCEEDED':
        return 'The operation had a deadline which expired.';
      case 'NOT_FOUND':
        return 'The requested resource was not found.';
      case 'ALREADY_EXISTS':
        return 'The resource that a client tried to create already exists.';
      case 'PERMISSION_DENIED':
        return 'The caller does not have permission to execute the specified operation.';
      case 'UNAUTHENTICATED':
        return 'The request does not have valid authentication credentials.';
      case 'RESOURCE_EXHAUSTED':
        return 'Resource has been exhausted (e.g., check quota).';
      case 'FAILED_PRECONDITION':
        return 'Operation was rejected because the system is not in a state required for the operation\'s execution.';
      case 'ABORTED':
        return 'The operation was aborted.';
      case 'OUT_OF_RANGE':
        return 'Operation was attempted past the valid range.';
      case 'UNIMPLEMENTED':
        return 'Operation is not implemented or not supported/enabled.';
      case 'INTERNAL':
        return 'Internal error occurred.';
      case 'UNAVAILABLE':
        return 'The service is currently unavailable.';
      case 'DATA_LOSS':
        return 'Unrecoverable data loss or corruption.';
      case 'CANCELLED':
        return 'The operation was cancelled.';
      // Add more cases as needed
      default:
        return 'An unknown platform exception occurred.';
    }
  }
}
