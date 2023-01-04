import 'package:demo_project/folder_screen.dart';
import 'package:demo_project/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:demo_project/signin_screen.dart';
import 'package:demo_project/phone.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: SignInScreen.id, routes: {
      SignInScreen.id: (context) => const SignInScreen(),
      FolderScreen.id: (context) => const FolderScreen(),
      UserScreen.id: (context) => const UserScreen(),
      MyPhone.id: (context) => const MyPhone(),
    });
  }
}
