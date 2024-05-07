class LoginRequestEntity {
  int? type;
  String? name;
  String? email;
  String? avatar;
  String? openId;
  int? online;

  LoginRequestEntity(
      this.type, this.name, this.email, this.avatar, this.openId, this.online);

  Map<String, dynamic> toJson() => {
        "type": type,
        "name": name,
        "email": email,
        "avatar": avatar,
        "openId": openId,
        "online": online,
      };
}

//api post response msg
class UserLoginResponseEntity {}
