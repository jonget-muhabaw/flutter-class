import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            //Logo
            Icon(Icons.anchor),
      
            //wecome back
            Text("Welcome Back \n we have missed you"),
            
            //form
            TextFormField(
              
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.person),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade300)
                ),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                fillColor: Colors.white,
                filled: true,
                hintText: "username",
                hintStyle: TextStyle(color:Colors.white ),
              ),
            )
            //login button
          ],
        ),
      ),
    );
  }
}
