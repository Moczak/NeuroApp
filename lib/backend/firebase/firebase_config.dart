import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCoP5pZkzgAURNyLJ0DkbZc8zgVWareXXE",
            authDomain: "universoneuro-f368b.firebaseapp.com",
            projectId: "universoneuro-f368b",
            storageBucket: "universoneuro-f368b.appspot.com",
            messagingSenderId: "318127733585",
            appId: "1:318127733585:web:2071e071b34950b03cb170"));
  } else {
    await Firebase.initializeApp();
  }
}
