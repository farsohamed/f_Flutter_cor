import 'package:cor/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(AppCor());
}

class AppCor extends StatelessWidget {
  const AppCor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   brightness: Brightness.light,
      // ),
      // darkTheme: ThemeData(brightness: Brightness.dark),
      // themeMode: ThemeMode.system,
    );
  }
}
