import 'package:flutter/material.dart';
import 'package:second/Screens/login.dart';

import 'registeras.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/1.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                // color: Colors.blue,
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "WELCOME TO",
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffA10101),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5, left: 20),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "FUEL QUEUE",
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 5),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Get fuel whenever you need...",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff868686),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(50),
                      child: ButtonGet(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonGet extends StatelessWidget {
  const ButtonGet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    //side: BorderSide(color: Colors.white,width: 3.0),
                    side: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Login()));
              },
              child: Text(
                "Get Started >",
                style: TextStyle(fontSize: 23),
              )),
        ),
      ],
    );
  }
}
