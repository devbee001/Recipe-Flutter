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
    apiKey: 'AIzaSyA4N5RdhklRf9wvP7Lc1LXBbgt6fZZ5Rcw',
    appId: '1:821048109250:web:f9ee8e4cc7d26cfdc7735b',
    messagingSenderId: '821048109250',
    projectId: 'recipe-app-80ea8',
    authDomain: 'recipe-app-80ea8.firebaseapp.com',
    storageBucket: 'recipe-app-80ea8.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDQQyU-TNVwOlpvTFjIDhzJ9QAVM5V0vnw',
    appId: '1:821048109250:android:cb4838f5f2d9e957c7735b',
    messagingSenderId: '821048109250',
    projectId: 'recipe-app-80ea8',
    storageBucket: 'recipe-app-80ea8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCmq6V2aTh4gTHyNkQAzbKbvcc4A-X41S0',
    appId: '1:821048109250:ios:88a646088e11f5fbc7735b',
    messagingSenderId: '821048109250',
    projectId: 'recipe-app-80ea8',
    storageBucket: 'recipe-app-80ea8.appspot.com',
    iosBundleId: 'com.example.recipeApp',
  );
}
