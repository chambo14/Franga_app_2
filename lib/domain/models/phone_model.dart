class PhoneModel {
  String? mobile;

  PhoneModel({this.mobile});


  factory PhoneModel.fromJson(Map<String, dynamic> json) {
    return PhoneModel(
      mobile: json['mobile'],
    );
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['mobile'] = this.mobile;
    return data;
  }
}