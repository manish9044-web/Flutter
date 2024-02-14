import 'package:flutter/material.dart';
import 'package:project1/utils/routes.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child:Column(
          children: [
            Text("Create an account",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            ),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(16.0),
            child:Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your name",
                    labelText: "Name",
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your email address",
                    labelText: "Email address",
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your mobile number",
                    labelText: "Mobile number",
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(height: 20),

              ],
            ))
          ],) ),
    );
  }
}