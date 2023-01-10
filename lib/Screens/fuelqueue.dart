import 'package:flutter/material.dart';

class FuelQueue extends StatefulWidget {
  const FuelQueue({super.key});

  @override
  State<FuelQueue> createState() => _FuelQueueState();
}

class _FuelQueueState extends State<FuelQueue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("assets/images/4.png"),
                    height: 250,
                    width: 250,
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0, right: 16.0),
                      ),
                      Text(
                        "Total",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.0, right: 16.0),
                      ),
                      Text("50",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold))
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(border: Border(top: BorderSide())),
            child: ListTile(
              leading: Text(
                "Cars",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              title: Text(
                "10",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(border: Border(top: BorderSide())),
            child: ListTile(
              leading: Text(
                "Vans",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              title: Text(
                "5",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(border: Border(top: BorderSide())),
            child: ListTile(
              leading: Text(
                "Buses",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              title: Text(
                "0",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(border: Border(top: BorderSide())),
            child: ListTile(
              leading: Text(
                "Bikes",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              title: Text(
                "15",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(border: Border(top: BorderSide())),
            child: ListTile(
              leading: Text(
                "Lories",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              title: Text(
                "10",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
              top: BorderSide(),
            )),
            child: ListTile(
              leading: Text(
                "Three Wheelers",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              title: Text(
                "10",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
          )
        ]),
      ]),
    );
  }
}
