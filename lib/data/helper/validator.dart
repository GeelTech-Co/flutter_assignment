mixin AppValidator {
  bool _isEmpty(String? value) {
    return value?.isEmpty ?? true;
  }

  String? isPassword(String? value) {
    if (_isEmpty(value)) {
      return 'Please enter password';
    } else if (value!.length < 7) {
      return 'Password must be 7 characters at least';
    }
    return null;
  }

  String? isUserName(String? value) {
    if (_isEmpty(value)) {
      return 'Please enter Username';
    }
    return null;
  }
}
