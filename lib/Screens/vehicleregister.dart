import 'package:flutter/material.dart';
import 'package:second/Screens/login.dart';

import 'package:second/Screens/vehicleownerdashboard.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class VehicleRegister extends StatefulWidget {
  const VehicleRegister({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<VehicleRegister> {
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
                "Vehicle Owner",
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
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final _vname = TextEditingController();
  final _vehiclenumber = TextEditingController();
  final _vehicletype = TextEditingController();
  final _nic = TextEditingController();
  final _vphonenumber = TextEditingController();
  final _vemail = TextEditingController();
  final _vpassword = TextEditingController();
  final _vrepassword = TextEditingController();

  authenticate(
    _vname,
    _vemail,
    _vphonenumber,
    _nic,
    _vehiclenumber,
    _vehicletype,
    _vpassword,
  ) async {
    var response = await http.post(
      Uri.parse(
          'https://fuelapp-backend-production.up.railway.app/api/v1/register_vehicleowner'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "name": _vname.text.toString(),
        "email": _vemail.text.toString(),
        "phone_number": _vphonenumber.text.toString(),
        "nic": _nic.text.toString(),
        "vehicle_number": _vehiclenumber.text.toString(),
        "vehicle_type": _vehicletype.text.toString(),
        "password": _vpassword.text.toString(),
        "role": "VEHICLEOWNER"
      }),
    );

    if (response.statusCode == 200) {
      print('Hooreeyyy!!');
      Navigator.push(context, MaterialPageRoute(builder: (_) => Login()));
    } else {
      print(response.body.toString());
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
                controller: _vname,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  // fillColor: Color.fromARGB(255, 220, 219, 219),
                  // filled: true,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 8, 8, 8),
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
              //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: TextFormField(
                controller: _vehiclenumber,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Vehicle number';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  // fillColor: Color.fromARGB(255, 220, 219, 219),
                  // filled: true,
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText: 'Vehicle number',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 25, 10),
              child: TextFormField(
                controller: _vehicletype,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Vehicle Type';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  // fillColor: Color.fromARGB(255, 220, 219, 219),
                  // filled: true,
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText:
                      'Vehicle Type (MOTORBIKE , THREEWHEEL , VAN , LORY , BUS , CAR)',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 25, 10),
              child: TextFormField(
                controller: _nic,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your NIC';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  // fillColor: Color.fromARGB(255, 220, 219, 219),
                  // filled: true,
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText: 'NIC',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 25, 10),
              //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              child: TextFormField(
                controller: _vphonenumber,
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
                controller: _vemail,
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
                controller: _vpassword,
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
                controller: _vrepassword,
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
                      color: Color.fromARGB(255, 114, 9, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    //
                    onPressed: (() {
                      if (_formKey.currentState!.validate()) {
                        authenticate(
                          _vname,
                          _vemail,
                          _vphonenumber,
                          _nic,
                          _vehiclenumber,
                          _vehicletype,
                          _vpassword,
                        );
                      }
                    }),
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
