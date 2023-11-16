import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAtrEnjHWhpEYOeFqozfQ5g0S0VC_KbLb4",
            authDomain: "webportfolio-96b62.firebaseapp.com",
            projectId: "webportfolio-96b62",
            storageBucket: "webportfolio-96b62.appspot.com",
            messagingSenderId: "656887559761",
            appId: "1:656887559761:web:1f525cd2d63327ca056a70"));
  } else {
    await Firebase.initializeApp();
  }
}
