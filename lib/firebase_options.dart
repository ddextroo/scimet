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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBYJ35nd4vVB9nAm11OJ_w7orJ8NxolArw',
    appId: '1:264825109099:web:6e48c8efdf7f46373a0f2e',
    messagingSenderId: '264825109099',
    projectId: 'scimet-34e53',
    authDomain: 'scimet-34e53.firebaseapp.com',
    storageBucket: 'scimet-34e53.appspot.com',
    measurementId: 'G-ECKVZDY9KE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC5TWUbxBJ_jMraPtP83Y21q4iBOfcqhIk',
    appId: '1:264825109099:android:9f27fc75e55c57793a0f2e',
    messagingSenderId: '264825109099',
    projectId: 'scimet-34e53',
    storageBucket: 'scimet-34e53.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBH-Ax7uGJHqZ1QDOspjz2bTi6QkQrCMNI',
    appId: '1:264825109099:ios:f5f14202cc7325ac3a0f2e',
    messagingSenderId: '264825109099',
    projectId: 'scimet-34e53',
    storageBucket: 'scimet-34e53.appspot.com',
    iosBundleId: 'com.ddev.scimet',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBH-Ax7uGJHqZ1QDOspjz2bTi6QkQrCMNI',
    appId: '1:264825109099:ios:9f80bf103c21416c3a0f2e',
    messagingSenderId: '264825109099',
    projectId: 'scimet-34e53',
    storageBucket: 'scimet-34e53.appspot.com',
    iosBundleId: 'com.example.scimet',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBYJ35nd4vVB9nAm11OJ_w7orJ8NxolArw',
    appId: '1:264825109099:web:75c1a96cef3e2d7e3a0f2e',
    messagingSenderId: '264825109099',
    projectId: 'scimet-34e53',
    authDomain: 'scimet-34e53.firebaseapp.com',
    storageBucket: 'scimet-34e53.appspot.com',
    measurementId: 'G-1D51X5VSVK',
  );
}
