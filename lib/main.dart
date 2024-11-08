import 'package:chat_app_ui/feature/auth/page/login_screen.dart';
import 'package:chat_app_ui/feature/intro/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MainApp());
}

class MainApp extends StatelessWidget {
   const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
