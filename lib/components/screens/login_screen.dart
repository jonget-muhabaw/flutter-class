import 'package:class_one/components/screens/my_form.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade400,
        body: Column(
          children: [
            //Logo
            const SizedBox(height: 20),
            const Icon(
              Icons.anchor,
              color: Colors.white,
              size: 50,
            ),
            const SizedBox(height: 20),
            //wecome back
            const Text(
              "Welcome Back \n we have missed you",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            //form
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    MyForm(
                      icon: const Icon(Icons.person),
                      hintTex: "Username",
                      obscureTex: false,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    MyForm(
                        icon: const Icon(Icons.email),
                        hintTex: "Email",
                        obscureTex: false),
                    const SizedBox(
                      height: 20,
                    ),
                    MyForm(
                        icon: const Icon(Icons.key),
                        hintTex: "password",
                        obscureTex: true)
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ), //login button
            GestureDetector(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, '/home');
                }
              },
              child: Container(
                color: Colors.black,
                height: 50,
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
