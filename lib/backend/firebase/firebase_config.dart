import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCnDHSpIwXt3aejZ8p7sE0q_33xOOIcm74",
            authDomain: "sample-epin.firebaseapp.com",
            projectId: "sample-epin",
            storageBucket: "sample-epin.appspot.com",
            messagingSenderId: "1084377237392",
            appId: "1:1084377237392:web:c3a417899dedae09299515"));
  } else {
    await Firebase.initializeApp();
  }
}
