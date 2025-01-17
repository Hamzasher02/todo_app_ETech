// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBEZh2BSBVBOSHdE8ZFBMWZHd66MkJn_Ec',
    appId: '1:1070061354458:web:808902660ce202e881d4e3',
    messagingSenderId: '1070061354458',
    projectId: 'athuproject-fc431',
    authDomain: 'athuproject-fc431.firebaseapp.com',
    storageBucket: 'athuproject-fc431.appspot.com',
    measurementId: 'G-JTRNC7TFMZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAwx-BKhYbZKtxon2ieoVMUFeJhWIngUxw',
    appId: '1:1070061354458:android:7a6ad77f4f2dbd3081d4e3',
    messagingSenderId: '1070061354458',
    projectId: 'athuproject-fc431',
    storageBucket: 'athuproject-fc431.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA75WbQMdscfwsKRdEyFaRwyUM3xM4NVOE',
    appId: '1:1070061354458:ios:9ec70aec4d4c8b9681d4e3',
    messagingSenderId: '1070061354458',
    projectId: 'athuproject-fc431',
    storageBucket: 'athuproject-fc431.appspot.com',
    iosBundleId: 'com.example.todoApp',
  );
}
