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
    apiKey: 'AIzaSyA3Wxdr1zDo2V3MfGv-76KtkPzCsUEpL48',
    appId: '1:65364738645:web:426b2390d794636c174adc',
    messagingSenderId: '65364738645',
    projectId: 'news-f5977',
    authDomain: 'news-f5977.firebaseapp.com',
    storageBucket: 'news-f5977.appspot.com',
    measurementId: 'G-3M8L07KNY1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDS1s_WalgpFC0wiKMLGkgi0B2uF815rks',
    appId: '1:65364738645:android:993f92c0c123a47f174adc',
    messagingSenderId: '65364738645',
    projectId: 'news-f5977',
    storageBucket: 'news-f5977.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA-Y-uIcvtB-1fFDwl9TAkQ6TcPf_CNbXw',
    appId: '1:65364738645:ios:5ebc50ee0e5c11ec174adc',
    messagingSenderId: '65364738645',
    projectId: 'news-f5977',
    storageBucket: 'news-f5977.appspot.com',
    iosBundleId: 'com.example.gamingnews',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA-Y-uIcvtB-1fFDwl9TAkQ6TcPf_CNbXw',
    appId: '1:65364738645:ios:bf3a65ccf9af8c43174adc',
    messagingSenderId: '65364738645',
    projectId: 'news-f5977',
    storageBucket: 'news-f5977.appspot.com',
    iosBundleId: 'com.example.gamingnews.RunnerTests',
  );
}
