class UserContactModel {
  int? id;
  String? mobile;
  String? phone;
  String? numeroRue;
  String? rue;
  Null? commune;
  Null? avenue;
  String? quartier;
  String? ville;
  Null? province;
  int? usersId;
  String? createdAt;
  String? updatedAt;

  UserContactModel(
      {this.id,
        this.mobile,
        this.phone,
        this.numeroRue,
        this.rue,
        this.commune,
        this.avenue,
        this.quartier,
        this.ville,
        this.province,
        this.usersId,
        this.createdAt,
        this.updatedAt});

  UserContactModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mobile = json['mobile'];
    phone = json['phone'];
    numeroRue = json['numero_rue'];
    rue = json['rue'];
    commune = json['commune'];
    avenue = json['avenue'];
    quartier = json['quartier'];
    ville = json['ville'];
    province = json['province'];
    usersId = json['users_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['mobile'] = this.mobile;
    data['phone'] = this.phone;
    data['numero_rue'] = this.numeroRue;
    data['rue'] = this.rue;
    data['commune'] = this.commune;
    data['avenue'] = this.avenue;
    data['quartier'] = this.quartier;
    data['ville'] = this.ville;
    data['province'] = this.province;
    data['users_id'] = this.usersId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}