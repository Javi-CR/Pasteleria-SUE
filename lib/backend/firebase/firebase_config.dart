import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC9JauVb6xgQeFkyr4QE8HmvBeIEQ5RJg4",
            authDomain: "pasteleria-sue.firebaseapp.com",
            projectId: "pasteleria-sue",
            storageBucket: "pasteleria-sue.firebasestorage.app",
            messagingSenderId: "467704049897",
            appId: "1:467704049897:web:ac862a963bd28b550a4078",
            measurementId: "G-NE8GY5LVQP"));
  } else {
    await Firebase.initializeApp();
  }
}
