/// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation


class LoginResponse {
    LoginResponse({
        required this.message,
        required this.status,
    });

    String message;
    int status;

    factory LoginResponse.fromJson(Map<dynamic, dynamic> json) => LoginResponse(
        message: json["message"],
        status: json["status"],
    );
}
