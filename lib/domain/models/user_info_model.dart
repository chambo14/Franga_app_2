import 'package:franga_agent/domain/models/user_model.dart';

class UserInfoModel {
  int? code;
  String? message;
  String? token;
  UserModel? user;

  UserInfoModel({this.code, this.message, this.token, this.user});

  UserInfoModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    token = json['token'];
    user = json['user'] != null ? UserModel.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    data['token'] = this.token;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}
