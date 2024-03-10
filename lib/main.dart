import 'package:auth_firebase/features/app/splash_screen/splash_screen.dart';
import 'package:auth_firebase/features/user_auth/presentation/pages/home_page.dart';
import 'package:auth_firebase/features/user_auth/presentation/pages/login_page.dart';
import 'package:auth_firebase/features/user_auth/presentation/pages/sign_up_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyBKGS0WRQ5ycqdZNwCsIEdd7lxNNirfDdQ",
        appId: "1:29610771014:web:4bed93b444b663f1a4c047",
        messagingSenderId: "29610771014",
        projectId: "flutter-firebase-4a0ba",
        // Your web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      routes: {
        '/': (context) => const SplashScreen(
          // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
          child: LoginPage(),
        ),
        '/login': (context) => const LoginPage(),
        '/signUp': (context) => const SignUpPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
