import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBrewO5dWIWWLQbS_tLdPkdScZSdnHCgvE",
            authDomain: "jobo-526e3.firebaseapp.com",
            projectId: "jobo-526e3",
            storageBucket: "jobo-526e3.appspot.com",
            messagingSenderId: "151607310397",
            appId: "1:151607310397:web:9860a2ab152cb840fe5254",
            measurementId: "G-D6T1J7KB2K"));
  } else {
    await Firebase.initializeApp();
  }
}
