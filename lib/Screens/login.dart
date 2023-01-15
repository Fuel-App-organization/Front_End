import 'package:flutter/material.dart';
import 'package:second/Screens/registeras.dart';
import 'package:second/Screens/shedowner_dashboard.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/login.png'),
                fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(children: [
              Container(
                padding: EdgeInsets.only(left: 8, top: 190),
                child: Text(
                  "Welcome\nBack",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 114, 9, 1)),
                ),
              ),
              Container(
                height: 800,
                // color: const Color(0xFF179797),
                child: const MyCustomForm(),
              )
            ])));
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _loginformKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _loginformKey,
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.45,
              right: 35,
              left: 35),
          child: Column(
            children: [
              TextFormField(
                validator: (mail) {
                  if (mail == null || mail.isEmpty) {
                    return 'Please enter your e-mail';
                  } else if (RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(mail)) {
                    return null;
                  } else {
                    return "Enter valid email";
                  }
                },
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    // fillColor: Colors.grey.shade100,
                    // filled: true,
                    hintText: "Email",
                    border: UnderlineInputBorder(
                        // borderRadius: BorderRadius.circular(10)
                        )),
              ),
              SizedBox(height: 30),
              TextFormField(
                validator: (password) {
                  if (password == null || password.isEmpty) {
                    return 'Please enter password';
                  }
                  return null;
                },
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    // fillColor: Colors.grey.shade100,
                    // filled: true,
                    hintText: "Password",
                    border: UnderlineInputBorder(
                        // borderRadius: BorderRadius.circular(10)
                        )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: (() {}),
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 114, 9, 1)),
                      ))
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 114, 9, 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                      onPressed: () {
                        if (_loginformKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => ShedOwnerDashBoard()));
                        }
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Don't have an Account",
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(
                      onPressed: (() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => RegisterAs()));
                      }),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Color.fromARGB(255, 114, 9, 1)),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
