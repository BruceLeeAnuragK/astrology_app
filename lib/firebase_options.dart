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
    apiKey: 'AIzaSyChDV8Az385iue6alzF0HzfU0foBihOmWE',
    appId: '1:959639114944:web:2e299531e2dfef54890925',
    messagingSenderId: '959639114944',
    projectId: 'astrology-app-c9948',
    authDomain: 'astrology-app-c9948.firebaseapp.com',
    storageBucket: 'astrology-app-c9948.appspot.com',
    measurementId: 'G-33KDVYXQ2K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAf44xkamG9YAHmHljS1ZMoTpI8w8VRtqE',
    appId: '1:959639114944:android:de9962c05cf3c7c1890925',
    messagingSenderId: '959639114944',
    projectId: 'astrology-app-c9948',
    storageBucket: 'astrology-app-c9948.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDNlOgl3KDVe7u9Id_6nLqmYUpSfBir-Zk',
    appId: '1:959639114944:ios:f50aa37851112c70890925',
    messagingSenderId: '959639114944',
    projectId: 'astrology-app-c9948',
    storageBucket: 'astrology-app-c9948.appspot.com',
    iosBundleId: 'com.example.astrologyApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDNlOgl3KDVe7u9Id_6nLqmYUpSfBir-Zk',
    appId: '1:959639114944:ios:bcc1688ac4853a13890925',
    messagingSenderId: '959639114944',
    projectId: 'astrology-app-c9948',
    storageBucket: 'astrology-app-c9948.appspot.com',
    iosBundleId: 'com.example.astrologyApp.RunnerTests',
  );
}
