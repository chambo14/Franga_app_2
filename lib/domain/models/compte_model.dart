class CompteModel {
  int? id;
  int? usersId;
  int? typeComptesId;
  int? active;
  int? solde;
  Null? activatedBy;
  Null? activatedAt;
  String? createdAt;
  String? updatedAt;

  CompteModel(
      {this.id,
        this.usersId,
        this.typeComptesId,
        this.active,
        this.solde,
        this.activatedBy,
        this.activatedAt,
        this.createdAt,
        this.updatedAt});

  CompteModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    usersId = json['users_id'];
    typeComptesId = json['type_comptes_id'];
    active = json['active'];
    solde = json['solde'];
    activatedBy = json['activated_by'];
    activatedAt = json['activated_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['users_id'] = this.usersId;
    data['type_comptes_id'] = this.typeComptesId;
    data['active'] = this.active;
    data['solde'] = this.solde;
    data['activated_by'] = this.activatedBy;
    data['activated_at'] = this.activatedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}