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
                child: MyCustomForm(),
              )
            ])));
  }
}

class MyCustomForm extends StatefulWidget {
  MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  _MyCustomFormState() {
    _selectedval = _rolelist[0];
  }

  final _loginformKey = GlobalKey<FormState>();
  final _lemail = TextEditingController();
  final _lpassword = TextEditingController();
  final _rolelist = ["Vehicle Owner", "Shed owner"];

  String _selectedval = "";
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
              DropdownButtonFormField(
                
                value: _selectedval,
                items: _rolelist.map((e) {
                  return DropdownMenuItem(
                    
                    child: Text(e),
                    value: (e),
                  );
                }).toList(),
                onChanged: (val) {
                  setState(() {
                    _selectedval = val as String;
                  });
                },
                icon: const Icon(Icons.arrow_drop_down_circle),
                iconEnabledColor: Color.fromARGB(255, 114, 9, 1),
                decoration: InputDecoration(
                    labelText: "Select Your Role",
                    prefixIcon: Icon(Icons.accessibility_new_rounded),
                    border: UnderlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _lemail,
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
                controller: _lpassword,
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
