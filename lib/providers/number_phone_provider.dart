import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:franga_agent/data/error_data.dart';
import 'package:franga_agent/domain/models/phone_model.dart';
import 'package:franga_agent/domain/models/phone_model_response.dart';
import 'package:franga_agent/networkService/repository/api_repository.dart';
import 'package:franga_agent/repositories/auth_repository.dart';

class UserPhoneController extends StateNotifier<AsyncValue<dynamic>> {
  Ref ref;

  UserPhoneController({
    required this.ref,
  }) : super(const AsyncData(null));

  Future<Either<String, bool>> login(
      {required String mobile}) async {
    state = const AsyncLoading();

    PhoneModel userReq = PhoneModel(mobile: mobile);
    final response = await ref.read(phoneRepositoryProvider).sendNumberPhone(userReq);
    if (response is ErrorResponse) {
      return Left(response!.message.toString());
    } else {
      ref.read(setAuthStateProvider.notifier).state = response;
      ref.read(setIsAuthenticatedProvider(true));
      ref.read(setAuthenticateKeyProvider(response!.codeOTP.toString()));
      return const Right(true);
    }


  }
}

final userControllerProvider =
StateNotifierProvider<UserPhoneController, AsyncValue<dynamic>>((ref) {
  return UserPhoneController(ref: ref);
});
