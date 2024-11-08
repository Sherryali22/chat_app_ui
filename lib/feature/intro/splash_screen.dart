import 'package:chat_app_ui/feature/auth/page/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder:(context)=> LoginScreen())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  'data:image/png;base64,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')),
          SizedBox(
            height: 30,
          ),
          Text('chatt'),
          SizedBox(
            height: 20,
          ),
          Text('chat with anyone ')
        ],
      ),
    ));
  }
}
