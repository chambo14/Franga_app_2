import 'package:franga_agent/domain/models/compte_model.dart';

import 'user_contact_model.dart';

class UserModel {
  final int? id;
  final String? prenom;
 final String? nom;
  final String? secondNom;
  final String? sexe;
  final String? dob;
  final String? pob;
  final String? email;
  int? paysId;
  final emailVerifiedAt;
  int? active;
  String? activatedAt;
  int? activatedBy;
  final  passwordChangedAt;
  String? createdAt;
  String? updatedAt;
  int? askResetPin;
  Null? identities;
  List<CompteModel>? comptes;
  UserContactModel? userContact;
  bool? success;
 final String? statusMessage;
  final int? statusCode;
   bool isSuccess() {
    return success ?? false || userContact != null;
  }

  UserModel(
      {this.id,
        this.prenom,
        this.nom,
        this.secondNom,
        this.sexe,
        this.dob,
        this.pob,
        this.email,
        this.paysId,
        this.emailVerifiedAt,
        this.active,
        this.activatedAt,
        this.activatedBy,
        this.passwordChangedAt,
        this.createdAt,
        this.updatedAt,
        this.askResetPin,
        this.identities,
        this.comptes,
        this.userContact,
        this.statusCode,
        this.statusMessage,
        this.success
      });

  UserModel.withError(this.id, this.prenom, this.nom, this.secondNom, this.sexe, this.dob, this.pob, this.email, this.emailVerifiedAt, this.passwordChangedAt, {
    int? statusCode,
    bool success = false,
    String? msg,
  })  : this.statusCode = statusCode,
        this.success = success,
        this.statusMessage = msg;


  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['id'],
        prenom: json['prenom'],
        nom: json['nom'],
        secondNom: json['second_nom'],
        sexe:json['sexe'],
        dob : json['dob'],
        pob : json['pob'],
        email : json['email'],
    paysId : json['pays_id'],
        emailVerifiedAt :json['email_verified_at'],
        active : json['active'],
        activatedAt : json['activated_at'],
    activatedBy : json['activated_by'],
    passwordChangedAt : json['password_changed_at'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    askResetPin : json['ask_reset_pin'],
    identities : json['identities'],
        comptes: json['comptes'] != null ? (json['comptes'] as List).map((i) => CompteModel.fromJson(i)).toList() : null,

    userContact : json['user_contact'] != null
        ?  UserContactModel.fromJson(json['user_contact'])
        : null

    );
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['id'] = this.id;
    data['prenom'] = this.prenom;
    data['nom'] = this.nom;
    data['second_nom'] = this.secondNom;
    data['sexe'] = this.sexe;
    data['dob'] = this.dob;
    data['pob'] = this.pob;
    data['email'] = this.email;
    data['pays_id'] = this.paysId;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['active'] = this.active;
    data['activated_at'] = this.activatedAt;
    data['activated_by'] = this.activatedBy;
    data['password_changed_at'] = this.passwordChangedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['ask_reset_pin'] = this.askResetPin;
    data['identities'] = this.identities;
    if (this.comptes != null) {
      data['comptes'] = this.comptes!.map((v) => v.toJson()).toList();
    }
    if (this.userContact != null) {
      data['user_contact'] = this.userContact!.toJson();
    }
    return data;
  }
}