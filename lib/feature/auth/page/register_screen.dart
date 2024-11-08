import 'package:chat_app_ui/feature/auth/page/login_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreen();
}

bool obscureText = true;

class _RegisterScreen extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'data:image/jpeg;base64,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'),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Create New account',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 30),
              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: const Icon(Icons.email_rounded),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red)),
                  )),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    prefixIcon: const Icon(Icons.email_rounded),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red)),
                  )),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    labelText: 'password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      icon: const Icon(
                        Icons.remove_red_eye_rounded,
                        color: Colors.blue,
                      ),
                    ),
                    prefixIcon: const Icon(Icons.lock_rounded),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red)),
                  )),
              SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                      onPressed: () {},
                      child: const Text(
                        'register',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ))),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('i have an account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      child: const Text(
                        'Sign in',
                        style: TextStyle(color: Colors.indigo),
                      ))
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
