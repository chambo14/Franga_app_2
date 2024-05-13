import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:franga_agent/domain/models/phone_model.dart';
import 'package:franga_agent/domain/models/phone_model_response.dart';
import 'package:franga_agent/networkService/api.dart';
import 'package:franga_agent/networkService/api_end_points.dart';
import 'package:franga_agent/networkService/api_params.dart';
import 'package:franga_agent/networkService/api_utils.dart';

class ApiRepository{

  Future<PhoneModelResponse?> sendNumberPhone(PhoneModel model,) async {
    final connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.none) {
      return PhoneModelResponse.withError(
          statusCode: CODE_NO_INTERNET, msg: apiUtils.getNetworkError());
    }
    String url = Api.baseUrl + ApiEndPoints.firstConnexion ;
    if (kDebugMode) {
      print(url);
    }
    try{
      final response = await apiUtils.post(url: url, data: model.mobile);
      if (response.statusCode == HttpStatus.ok) {
        if (kDebugMode) {
          print(PhoneModelResponse.fromJson(response.data));
        }
        PhoneModelResponse phoneconnected = PhoneModelResponse.fromJson(response.data);


        return phoneconnected;
      } else {
        return null;
      }} catch (e){
      return PhoneModelResponse.withError(
          statusCode: CODE_ERROR, msg: apiUtils.handleError(e));
    }

  }
}

final phoneRepositoryProvider = Provider<ApiRepository>((ref) {
  return ApiRepository();
});