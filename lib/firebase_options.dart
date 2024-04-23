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
    apiKey: 'AIzaSyDCvrhkgEl1k-G220X-j9jkHkXDEdSNI7U',
    appId: '1:298346586827:web:e119767fb630514307f14e',
    messagingSenderId: '298346586827',
    projectId: 'chat-app-cdd65',
    authDomain: 'chat-app-cdd65.firebaseapp.com',
    storageBucket: 'chat-app-cdd65.appspot.com',
    measurementId: 'G-Q9Y88JHPWR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB7FxUwRpZeMwmO_4_VfAT_O0v7ehZuxOs',
    appId: '1:298346586827:android:a0dd0095b860424907f14e',
    messagingSenderId: '298346586827',
    projectId: 'chat-app-cdd65',
    storageBucket: 'chat-app-cdd65.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBHDSTrBUCtjppfVhirO5dGE_olWCfMz3M',
    appId: '1:298346586827:ios:53f7ba742700c6a307f14e',
    messagingSenderId: '298346586827',
    projectId: 'chat-app-cdd65',
    storageBucket: 'chat-app-cdd65.appspot.com',
    iosBundleId: 'com.example.aaa',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBHDSTrBUCtjppfVhirO5dGE_olWCfMz3M',
    appId: '1:298346586827:ios:53f7ba742700c6a307f14e',
    messagingSenderId: '298346586827',
    projectId: 'chat-app-cdd65',
    storageBucket: 'chat-app-cdd65.appspot.com',
    iosBundleId: 'com.example.aaa',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDCvrhkgEl1k-G220X-j9jkHkXDEdSNI7U',
    appId: '1:298346586827:web:1c2cb10a6416510107f14e',
    messagingSenderId: '298346586827',
    projectId: 'chat-app-cdd65',
    authDomain: 'chat-app-cdd65.firebaseapp.com',
    storageBucket: 'chat-app-cdd65.appspot.com',
    measurementId: 'G-WXT6S9YCB3',
  );
}