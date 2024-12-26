import 'package:class_one/components/screens/my_form.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

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
                child: const Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    MyForm(
                      hintText: "Enter name",
                      icon: Icon(Icons.person),
                      obscureText: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MyForm(
                      hintText: "Enter Email",
                      icon: Icon(Icons.email),
                      obscureText: false,
                    ),
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
                    Navigator.pushNamed(context, "/home");
                  }
                },
                child: Column(
                  spacing: 20,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/counter');
                        },
                        child: const Text("Go To Counter APP"),
                      ),
                    ),
                    Container(
                      color: Colors.black,
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
