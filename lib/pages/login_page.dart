import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            "images/login1.png",
            height: 400,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Welcome $name",
            style: const TextStyle(
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
                      hintText: "Enter username or email",
                      labelText: "Username"),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter your password", labelText: "Password"),
                ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(const Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    height: 40,
                    width: changeButton ? 50 : 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        color: Colors.blueGrey),
                    child: changeButton
                        ? const Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : const Text(
                            "login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Source Sans Pro",
                                fontSize: 18),
                          ),
                  ),
                )
                // ElevatedButton(
                //   style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                //   },
                //   child: const Text("Login"),
                // ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
