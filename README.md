# Jivosdk Flutter Demo

Example implementation of JivoSDK Flutter Plugin

## Configuration

To support iOS platform, please add following lines into beginning of `ios/Podfile` before initial run:

```
source 'https://github.com/cocoapods/specs' 
source 'https://github.com/jivochat/cocoapods-repo'
```

## Basic Usage

```
Jivo.session.setContactInfo(name: "Homer", email: "h.simpson@springfield.com", phone: "Simpson", brief: "Family guy");
Jivo.session.setup(channelId: "YOUR_CHANNEL_ID", userToken: user.supportJwt);
Jivo.display.present();
```

## Public API

Currently, following methods are available:

```
Future<void> Jivo.session.setPreferredServer(JVSessionServer server) async
Future<void> Jivo.session.setup({required String channelId, required String userToken}) async
Future<void> Jivo.session.setContactInfo({String? name, String? email, String? phone, String? brief}) async
Future<void> Jivo.session.setCustomData(List<JVSessionCustomDataField> fields) async
Future<void> Jivo.session.clear() async
void Jivo.session.startWatchingUnreadCounter(Function watcher)

Future<bool> Jivo.display.isOnscreen async
Future<void> Jivo.display.setLocale(Locale locale) async
Future<void> Jivo.display.defineText(String text, {required JVDisplayElement element}) async
Future<void> Jivo.display.defineColor(Color color, {required JVDisplayElement element}) async
Future<void> Jivo.display.defineImage(String name, {required JVDisplayElement element}) async
Future<void> Jivo.display.setExtraItems({required JVDisplayMenu menu, required List<String> captions, required Function callback}) async
Future<void> Jivo.display.present() async
void Jivo.display.executeWhenAsksToAppear(Function executor)
void Jivo.display.executeWhenWillAppear(Function executor)
void Jivo.display.executeWhenDidDisappear(Function executor)

Future<void> Jivo.notifications.setPermissionAsking(JVNotificationsPermissionAskingMoment moment) async
Future<void> Jivo.notifications.setPushToken(String token) async

Future<void> Jivo.debugging.setLevel(JVDebuggingLevel level) async
Future<void> Jivo.debugging.archiveLogs({required Function completion}) async
```

## What's next

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
