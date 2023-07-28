// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB0rtSvztaZ17XKawsYNriOJBUF9EYpTrY',
    appId: '1:355038622770:web:535267c341ab6d7195382b',
    messagingSenderId: '355038622770',
    projectId: 'chat-67ba4',
    authDomain: 'chat-67ba4.firebaseapp.com',
    storageBucket: 'chat-67ba4.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAN9ZX38R_TbzJrrfanSq_oD9Q2l4a_2TQ',
    appId: '1:355038622770:android:bca70fb9742f967295382b',
    messagingSenderId: '355038622770',
    projectId: 'chat-67ba4',
    storageBucket: 'chat-67ba4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCp-xw4a-aLh_zk0FwjbqXQtQBaT-uflKQ',
    appId: '1:355038622770:ios:b63771fcb3b63c9d95382b',
    messagingSenderId: '355038622770',
    projectId: 'chat-67ba4',
    storageBucket: 'chat-67ba4.appspot.com',
    iosClientId: '355038622770-cteqgc30eu6fjkh5rrtn439duritf725.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterChatapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCp-xw4a-aLh_zk0FwjbqXQtQBaT-uflKQ',
    appId: '1:355038622770:ios:6aa5c96d8735157b95382b',
    messagingSenderId: '355038622770',
    projectId: 'chat-67ba4',
    storageBucket: 'chat-67ba4.appspot.com',
    iosClientId: '355038622770-g9egn5k6sdm9nv0f53b5au3h1uodo8ok.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterChatapp.RunnerTests',
  );
}