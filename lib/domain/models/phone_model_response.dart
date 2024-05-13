import 'dart:convert';

class PhoneModelResponse {
  String? message;
  int? codeOTP;
  bool? success;
  int? statusCode;

  bool isSuccess() {
    return success ?? false || message != null;}

  factory PhoneModelResponse.fromRawJson(String str) =>
      PhoneModelResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

    PhoneModelResponse({this.message, this.codeOTP, this.success, this.statusCode});
  PhoneModelResponse.withError({
    int? statusCode,
    bool success = false,
    String? msg,
  })  : this.statusCode = statusCode,
        this.success = success,
        this.message = msg;


  factory PhoneModelResponse.fromJson(Map<String, dynamic> json) {
    return PhoneModelResponse(
        message: json['message'], codeOTP: json['code OTP']);
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['message'] = this.message;
    data['code OTP'] = this.codeOTP;
    return data;
  }
}
