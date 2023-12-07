class Login {
  final int status;
  final String message;

  Login({required this.status, required this.message});

  factory Login.fromJson(Map<String, dynamic> json) {
    return Login(
      status: json['status'] ?? 0,
      message: json['message'] ?? '',
    );
  }
}