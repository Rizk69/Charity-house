class Auth {
  String? message;
  UserData? userData;

  Auth({this.message, this.userData});

  Auth.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    userData = json['userData'] != null
        ? new UserData.fromJson(json['userData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.userData != null) {
      data['userData'] = this.userData!.toJson();
    }
    return data;
  }
}

class UserData {
  String? userId;
  String? email;
  String? name;
  String? userType;
  Null? userImage;
  String? token;

  UserData(
      {this.userId,
      this.email,
      this.name,
      this.userType,
      this.userImage,
      this.token});

  UserData.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    email = json['email'];
    name = json['name'];
    userType = json['userType'];
    userImage = json['userImage'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['email'] = this.email;
    data['name'] = this.name;
    data['userType'] = this.userType;
    data['userImage'] = this.userImage;
    data['token'] = this.token;
    return data;
  }
}
