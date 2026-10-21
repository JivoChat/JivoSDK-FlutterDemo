import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:jvsdk_plugin/bridge.dart';

class FireBaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotifications() async {
    final settings = await _firebaseMessaging.requestPermission();
    debugPrint('Push permission: ${settings.authorizationStatus}');

    await _registerToken(await _firebaseMessaging.getToken());

    _firebaseMessaging.onTokenRefresh.listen((token) async {
      debugPrint('FCM token refreshed');
      await _registerToken(token);
    });
  }

  Future<void> _registerToken(String? token) async {
    if (token == null || token.isEmpty) {
      debugPrint('FCM token is empty — push will not work');
      return;
    }

    debugPrint('FCM token: $token');
    await Jivo.notifications.setPushToken(token);
    debugPrint('Push token registered in Jivo SDK');
  }
}
