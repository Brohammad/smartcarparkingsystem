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
    apiKey: 'AIzaSyAUpiCW_B7zj_6OfnX0v_4C-uxa4EWhI-g',
    appId: '1:666471045670:web:0fea439eeea63a54a3e4e7',
    messagingSenderId: '666471045670',
    projectId: 'smartparking-8b3e7',
    authDomain: 'smartparking-8b3e7.firebaseapp.com',
    storageBucket: 'smartparking-8b3e7.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDH1kITXBjw2qJH8viaH-ToD5oSRT5FxC8',
    appId: '1:666471045670:android:cc946e43844c682ea3e4e7',
    messagingSenderId: '666471045670',
    projectId: 'smartparking-8b3e7',
    storageBucket: 'smartparking-8b3e7.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA66uoyLIcXu9_z_K2rWJo5mouRJ88eQjs',
    appId: '1:666471045670:ios:2374a0bff921b276a3e4e7',
    messagingSenderId: '666471045670',
    projectId: 'smartparking-8b3e7',
    storageBucket: 'smartparking-8b3e7.firebasestorage.app',
    iosBundleId: 'com.example.project',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA66uoyLIcXu9_z_K2rWJo5mouRJ88eQjs',
    appId: '1:666471045670:ios:2374a0bff921b276a3e4e7',
    messagingSenderId: '666471045670',
    projectId: 'smartparking-8b3e7',
    storageBucket: 'smartparking-8b3e7.firebasestorage.app',
    iosBundleId: 'com.example.project',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAUpiCW_B7zj_6OfnX0v_4C-uxa4EWhI-g',
    appId: '1:666471045670:web:0fea439eeea63a54a3e4e7',
    messagingSenderId: '666471045670',
    projectId: 'smartparking-8b3e7',
    authDomain: 'smartparking-8b3e7.firebaseapp.com',
    storageBucket: 'smartparking-8b3e7.firebasestorage.app',
  );

}