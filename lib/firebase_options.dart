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
    apiKey: 'AIzaSyBVNTnBar8PHSHaK_iqDfYOuYzsd69Snlc',
    appId: '1:82614631977:web:339a0e9fc9341c21bfa638',
    messagingSenderId: '82614631977',
    projectId: 'robinhoodarmy-edbd4',
    authDomain: 'robinhoodarmy-edbd4.firebaseapp.com',
    storageBucket: 'robinhoodarmy-edbd4.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDZ9C9Fh29jypre2eEVvMCAA0NiQk3HkKQ',
    appId: '1:82614631977:android:94f79f7e18f2a348bfa638',
    messagingSenderId: '82614631977',
    projectId: 'robinhoodarmy-edbd4',
    storageBucket: 'robinhoodarmy-edbd4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDG0cRsDCvTKynpSdb_z8_9iuPIgGw17bc',
    appId: '1:82614631977:ios:256d3122e67f3878bfa638',
    messagingSenderId: '82614631977',
    projectId: 'robinhoodarmy-edbd4',
    storageBucket: 'robinhoodarmy-edbd4.appspot.com',
    iosBundleId: 'com.example.robinfinal',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDG0cRsDCvTKynpSdb_z8_9iuPIgGw17bc',
    appId: '1:82614631977:ios:82e9b8740ad3ebf7bfa638',
    messagingSenderId: '82614631977',
    projectId: 'robinhoodarmy-edbd4',
    storageBucket: 'robinhoodarmy-edbd4.appspot.com',
    iosBundleId: 'com.example.robinfinal.RunnerTests',
  );
}
