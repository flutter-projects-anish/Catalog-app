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

  final _formKey = GlobalKey<FormState>();

  moveTOHomePage(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

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
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter username or email",
                        labelText: "Username"),
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return "Please enter your username";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter your password", labelText: "Password"),
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return "Please enter your password";
                      } else if (value!.length < 6) {
                        return "password length must be more then six characters.";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Material(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                    child: InkWell(
                      onTap: () => moveTOHomePage(context),
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        height: 40,
                        width: changeButton ? 50 : 150,
                        alignment: Alignment.center,
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
            ),
          )
        ]),
      ),
    );
  }
}
