import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(decoration:  BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/2.png'),
              fit: BoxFit.fill,
            ),
          ),),
    ),);
  }
}