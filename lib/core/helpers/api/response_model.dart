import 'package:equatable/equatable.dart';

class ResponseEntity extends Equatable {
  final int code;
  final bool status;
  final dynamic data;
  final String message;

  const ResponseEntity({
    required this.code,
    required this.data,
    required this.status,
    required this.message,
  });
  @override
  List<Object?> get props => [code, data, status, message];
}

class ResponseModel extends ResponseEntity {
  const ResponseModel({
    required super.code,
    required super.data,
    required super.status,
    required super.message,
  });
  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
      code: json['code'],
      data: json['data'],
      status: json['status'],
      message: json['message'],
    );
  }

  Map<String, dynamic> toJson() => {
        'code': code,
        'data': data,
        'status': status,
        'message': message,
      };
}
