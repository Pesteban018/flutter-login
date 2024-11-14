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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.fuchsia:
      // TODO: Handle this case.
      case TargetPlatform.linux:
      // TODO: Handle this case.
      case TargetPlatform.windows:
      // TODO: Handle this case.
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
      apiKey: "AIzaSyCHKDBrhztM4mgQcDSUfePr7IUMs1GM7Hg",
      authDomain: "flutterfire-ui-codelab-f5805.firebaseapp.com",
      projectId: "flutterfire-ui-codelab-f5805",
      storageBucket: "flutterfire-ui-codelab-f5805.firebasestorage.app",
      messagingSenderId: "754474234926",
      appId: "1:754474234926:web:732cce3c9826e1d1c3dbbf");

  static const FirebaseOptions android = FirebaseOptions(
      apiKey: "AIzaSyCHKDBrhztM4mgQcDSUfePr7IUMs1GM7Hg",
      authDomain: "flutterfire-ui-codelab-f5805.firebaseapp.com",
      projectId: "flutterfire-ui-codelab-f5805",
      storageBucket: "flutterfire-ui-codelab-f5805.firebasestorage.app",
      messagingSenderId: "754474234926",
      appId: "1:754474234926:web:732cce3c9826e1d1c3dbbf");

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBqLWsqFjYAdGyihKTahMRDQMo0N6NVjAs',
    appId: '1:963656261848:ios:d9e01cfe8b675dfcb237ad',
    messagingSenderId: '963656261848',
    projectId: 'flutterfire-ui-codelab',
    storageBucket: 'flutterfire-ui-codelab.firebasestorage.app',
    iosClientId:
        '963656261848-v7r3vq1v6haupv0l1mdrmsf56ktnua60.apps.googleusercontent.com',
    iosBundleId: 'com.example.complete',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBqLWsqFjYAdGyihKTahMRDQMo0N6NVjAs',
    appId: '1:963656261848:ios:d9e01cfe8b675dfcb237ad',
    messagingSenderId: '963656261848',
    projectId: 'flutterfire-ui-codelab',
    storageBucket: 'flutterfire-ui-codelab.firebasestorage.app',
    iosClientId:
        '963656261848-v7r3vq1v6haupv0l1mdrmsf56ktnua60.apps.googleusercontent.com',
    iosBundleId: 'com.example.complete',
  );
}
