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
    apiKey: 'AIzaSyDA67Zf_HMJqOFylucudzE1cbu5If_-jnA',
    appId: '1:926422603904:web:90f1e3a40f79ed3d0e6e65',
    messagingSenderId: '926422603904',
    projectId: 'to-do-app-basic',
    authDomain: 'to-do-app-basic.firebaseapp.com',
    storageBucket: 'to-do-app-basic.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBfie6RX08sRQztRtXJrtsaBuFN4mQbKx4',
    appId: '1:926422603904:android:c2a5ef2442b13de60e6e65',
    messagingSenderId: '926422603904',
    projectId: 'to-do-app-basic',
    storageBucket: 'to-do-app-basic.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCNm6IanhxVN3OYwgsZGvuZ8cN2yBNAwjA',
    appId: '1:926422603904:ios:44ff2c37146e70ac0e6e65',
    messagingSenderId: '926422603904',
    projectId: 'to-do-app-basic',
    storageBucket: 'to-do-app-basic.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );
}
