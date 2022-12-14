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
    apiKey: 'AIzaSyATL46HyQ1CWbGTVZ11TJEi5ef9AVY2QzQ',
    appId: '1:44130412915:web:1d6f2adcd98a13c7b33d06',
    messagingSenderId: '44130412915',
    projectId: 'forumapp-e0052',
    authDomain: 'forumapp-e0052.firebaseapp.com',
    storageBucket: 'forumapp-e0052.appspot.com',
    measurementId: 'G-BFQ7MLK056',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDhTMzk9oNPNq5bC0OOJ0nA7BNL7mTvW3M',
    appId: '1:44130412915:android:e063582a86a123ccb33d06',
    messagingSenderId: '44130412915',
    projectId: 'forumapp-e0052',
    storageBucket: 'forumapp-e0052.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCo5hV_dX0lASBO-5q0pGFlFsG0366ENYQ',
    appId: '1:44130412915:ios:480b96333cc84c35b33d06',
    messagingSenderId: '44130412915',
    projectId: 'forumapp-e0052',
    storageBucket: 'forumapp-e0052.appspot.com',
    iosClientId: '44130412915-4kbgb0osm62t32vv6kf789mm74l1qhea.apps.googleusercontent.com',
    iosBundleId: 'com.example.forumapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCo5hV_dX0lASBO-5q0pGFlFsG0366ENYQ',
    appId: '1:44130412915:ios:480b96333cc84c35b33d06',
    messagingSenderId: '44130412915',
    projectId: 'forumapp-e0052',
    storageBucket: 'forumapp-e0052.appspot.com',
    iosClientId: '44130412915-4kbgb0osm62t32vv6kf789mm74l1qhea.apps.googleusercontent.com',
    iosBundleId: 'com.example.forumapp',
  );
}
