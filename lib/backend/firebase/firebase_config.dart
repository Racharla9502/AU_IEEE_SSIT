import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCmdXMsTZfLVMTWP2Yx4m0f8u5jL4hTTxU",
            authDomain: "ieee-ssit-au-oidlfb.firebaseapp.com",
            projectId: "ieee-ssit-au-oidlfb",
            storageBucket: "ieee-ssit-au-oidlfb.appspot.com",
            messagingSenderId: "885523389185",
            appId: "1:885523389185:web:77bbd7326d624add675900"));
  } else {
    await Firebase.initializeApp();
  }
}
