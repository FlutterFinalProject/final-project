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
    apiKey: 'AIzaSyD3zYMNnzxxUSkVMsEfVnLq7437eLk3SrE',
    appId: '1:804809864100:web:8de0aabbb6527a0b7a0731',
    messagingSenderId: '804809864100',
    projectId: 'foodapp-46f29',
    authDomain: 'foodapp-46f29.firebaseapp.com',
    storageBucket: 'foodapp-46f29.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDOoa78Zgiq4aK1PS7d34rcT9aTx9Po3tU',
    appId: '1:804809864100:android:23ab19fa4b0e7acd7a0731',
    messagingSenderId: '804809864100',
    projectId: 'foodapp-46f29',
    storageBucket: 'foodapp-46f29.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA-JP-y65FzEHdaCP9hpB49jnBxi2sy9oA',
    appId: '1:804809864100:ios:1530fb8102a5d9e07a0731',
    messagingSenderId: '804809864100',
    projectId: 'foodapp-46f29',
    storageBucket: 'foodapp-46f29.appspot.com',
    iosBundleId: 'com.example.finalProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA-JP-y65FzEHdaCP9hpB49jnBxi2sy9oA',
    appId: '1:804809864100:ios:39a63391129d3a2a7a0731',
    messagingSenderId: '804809864100',
    projectId: 'foodapp-46f29',
    storageBucket: 'foodapp-46f29.appspot.com',
    iosBundleId: 'com.example.finalProject.RunnerTests',
  );
}
