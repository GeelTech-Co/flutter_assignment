class ErrorModel {
  Message? message;

  ErrorModel({this.message});

  ErrorModel.fromJson(Map<String, dynamic> json) {
    message =
    json['message'] != null ? Message.fromJson(json['message']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (message != null) {
      data['message'] = message!.toJson();
    }
    return data;
  }
}

class Message {
  String? arMessage;
  String? enMessage;

  Message({this.arMessage, this.enMessage});

  Message.fromJson(Map<String, dynamic> json) {
    arMessage = json['arMessage'];
    enMessage = json['enMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['arMessage'] = arMessage;
    data['enMessage'] = enMessage;
    return data;
  }
}
