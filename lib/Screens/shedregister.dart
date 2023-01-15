import 'package:flutter/material.dart';
import 'package:second/Screens/login.dart';
import 'package:second/Screens/shedowner_dashboard.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ShedRegister extends StatefulWidget {
  const ShedRegister({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<ShedRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              color: Colors.white,
              padding: const EdgeInsets.only(top: 5),
              child: const Text(
                "Shed Owner",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color.fromARGB(255, 114, 9, 1),
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 700,
          child: const MyCustomForm(),
        ),
      ]),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  //const MyCustomForm({super.key});
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _shedname = TextEditingController();
  final _city = TextEditingController();
  final _phonenumber = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _repassword = TextEditingController();

  authenticate(_name, _shedname, _city, _phonenumber, _email, _password) async {
    var response = await http.post(
      Uri.parse(
          'https://fuelapp-backend-production.up.railway.app/api/v1/register_shedowner'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "name": _name.text.toString(),
        "email": _email.text.toString(),
        "phone_number": _phonenumber.text.toString(),
        "shed_name": _shedname.text.toString(),
        "city": _city.text.toString(),
        "password": _password.text.toString(),
        "role": "SHEDOWNER"
      }),
    );

    if (response.statusCode == 200) {
      print('Hooreeyyy!!');
    } else {
      print(response.statusCode.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 25, 10),
              child: TextFormField(
                controller: _name,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  // fillColor: Color.fromARGB(255, 220, 219, 219),
                  // filled: true,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 2.0,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText: 'Name',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 25, 10),
              child: TextFormField(
                controller: _shedname,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Shed Name';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  // fillColor: Color.fromARGB(255, 220, 219, 219),
                  // filled: true,
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText: 'Shed Name',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 25, 10),
              child: TextFormField(
                controller: _city,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Shed location';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  // fillColor: Color.fromARGB(255, 220, 219, 219),
                  // filled: true,
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText: 'City',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 25, 10),
              //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: TextFormField(
                controller: _phonenumber,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  // fillColor: Color.fromARGB(255, 220, 219, 219),
                  // filled: true,
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText: 'Phone number',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 25, 10),
              child: TextFormField(
                controller: _email,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your e-mail';
                  } else if (RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value)) {
                    return null;
                  } else {
                    return "Enter valid email";
                  }
                },
                decoration: const InputDecoration(
                  // fillColor: Color.fromARGB(255, 220, 219, 219),
                  // filled: true,
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText: 'E-mail',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 25, 10),
              //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: TextFormField(
                controller: _password,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  // fillColor: Color.fromARGB(255, 220, 219, 219),
                  // filled: true,
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 25, 10),
              //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: TextFormField(
                controller: _repassword,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password again';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  // fillColor: Color.fromARGB(255, 220, 219, 219),
                  // filled: true,
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 52, 9, 6),
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        authenticate(_name, _shedname, _city, _phonenumber,
                            _email, _password);
                      }
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
