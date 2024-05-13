import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:franga_agent/domain/models/phone_model.dart';
import 'package:franga_agent/domain/models/phone_model_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

const IS_AUTHENTICATED_KEY = 'IS_AUTHENTICATED_KEY';
const AUTHENTICATED_USER_CODE_KEY = 'AUTHENTICATED_USER_EMAIL_KEY';

final sharedPrefProvider = Provider((_) async {
  return await SharedPreferences.getInstance();
});

final setAuthStateProvider = StateProvider<PhoneModelResponse?>(
      (ref) => null,
);

final setIsAuthenticatedProvider = StateProvider.family<void, bool>(
      (ref, isAuth) async {
    final prefs = await ref.watch(sharedPrefProvider);
    ref.watch(setAuthStateProvider);
    prefs.setBool(
      IS_AUTHENTICATED_KEY,
      isAuth,
    );
  },
);

final setAuthenticateKeyProvider = StateProvider.family<void, String>(
    (ref, stringValue) async{
      final prefs = await ref.watch(sharedPrefProvider);
      ref.watch(setAuthStateProvider);
      prefs.setString(AUTHENTICATED_USER_CODE_KEY, stringValue);
    }
);

final setAuthenticatedUserProvider = StateProvider.family<void, PhoneModel>(
      (ref, userdata) async {
    final prefs = await ref.watch(sharedPrefProvider);
    ref.watch(setAuthStateProvider);
    prefs.setString(
      AUTHENTICATED_USER_CODE_KEY,
      json.encode(userdata),
    );
  },
);

final getIsAuthenticatedProvider = FutureProvider<bool>(
      (ref) async {
    final prefs = await ref.watch(sharedPrefProvider);
    ref.watch(setAuthStateProvider);
    return prefs.getBool(IS_AUTHENTICATED_KEY) ?? false;
  },
);

final getAuthenticatedUserProvider = FutureProvider<PhoneModelResponse>(
      (ref) async {
    final prefs = await ref.watch(sharedPrefProvider);
    ref.watch(setAuthStateProvider);
    dynamic user =
    json.decode(prefs.getString(AUTHENTICATED_USER_CODE_KEY) ?? "");
    return PhoneModelResponse.fromJson(user);
  },
);

// Todo: Handle logout or and reset
final resetStorage = StateProvider<dynamic>(
      (ref) async {
    final prefs = await ref.watch(sharedPrefProvider);
    final isCleared = await prefs.clear();
    return isCleared;
  },
);