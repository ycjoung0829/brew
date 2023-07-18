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
    apiKey: 'AIzaSyBOZIYSAR7A7U_dogMw1BTfWvcdF9aaMtw',
    appId: '1:63126000320:web:639bc0ec70a42d56655325',
    messagingSenderId: '63126000320',
    projectId: 'authtutorial-417d7',
    authDomain: 'authtutorial-417d7.firebaseapp.com',
    storageBucket: 'authtutorial-417d7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD-0T6CGAWYI8ZeYzqLWPC1CivgIZT2AWY',
    appId: '1:63126000320:android:30e8c03180e3d1da655325',
    messagingSenderId: '63126000320',
    projectId: 'authtutorial-417d7',
    storageBucket: 'authtutorial-417d7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBSJlQP8ujllCWbBz64iPysYW7htCm2i2o',
    appId: '1:63126000320:ios:2c4ea2a8f89eebfe655325',
    messagingSenderId: '63126000320',
    projectId: 'authtutorial-417d7',
    storageBucket: 'authtutorial-417d7.appspot.com',
    iosClientId: '63126000320-11io4tcljgsti9iqtj51fikdm8f45jsu.apps.googleusercontent.com',
    iosBundleId: 'com.example.brew',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBSJlQP8ujllCWbBz64iPysYW7htCm2i2o',
    appId: '1:63126000320:ios:cd2de36f9de04236655325',
    messagingSenderId: '63126000320',
    projectId: 'authtutorial-417d7',
    storageBucket: 'authtutorial-417d7.appspot.com',
    iosClientId: '63126000320-ecn5igdmi5qk1ur03i5cajkf5jm7qot7.apps.googleusercontent.com',
    iosBundleId: 'com.example.brew.RunnerTests',
  );
}
