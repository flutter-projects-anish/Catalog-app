import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        Image.asset(
          "images/login1.png",
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          "Welcome to login page",
          style: TextStyle(
            fontSize: 30,
            color: Colors.blueGrey,
            fontFamily: 'Pacifico',
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 16.00, horizontal: 32.00),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Enter username or email", labelText: "Username"),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "Enter your password", labelText: "Password"),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Login",
                  style: TextStyle(fontFamily: 'Source Sans Pro'),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
