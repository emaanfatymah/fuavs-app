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
    apiKey: 'AIzaSyCkqXLghJAEAkkUXCBaK7lAWBErzxxGwos',
    appId: '1:555782467491:web:90eea256f2e115a4e37416',
    messagingSenderId: '555782467491',
    projectId: 'fuavs-app-5902f',
    authDomain: 'fuavs-app-5902f.firebaseapp.com',
    storageBucket: 'fuavs-app-5902f.appspot.com',
    measurementId: 'G-R2MK3QELWB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAVHdBN5BNFYsKVZDOEvA5BUv04B6WsNlA',
    appId: '1:555782467491:android:87770fd64ef0964ee37416',
    messagingSenderId: '555782467491',
    projectId: 'fuavs-app-5902f',
    storageBucket: 'fuavs-app-5902f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAJ7_dQkunRV0wGXKEfqF3bMbCauu6arP0',
    appId: '1:555782467491:ios:bfbdab17dd61c273e37416',
    messagingSenderId: '555782467491',
    projectId: 'fuavs-app-5902f',
    storageBucket: 'fuavs-app-5902f.appspot.com',
    iosBundleId: 'com.example.droneApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAJ7_dQkunRV0wGXKEfqF3bMbCauu6arP0',
    appId: '1:555782467491:ios:a0f60695d78d036be37416',
    messagingSenderId: '555782467491',
    projectId: 'fuavs-app-5902f',
    storageBucket: 'fuavs-app-5902f.appspot.com',
    iosBundleId: 'com.example.droneApp.RunnerTests',
  );
}
