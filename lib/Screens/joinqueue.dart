import 'package:flutter/material.dart';

import 'exitqueue.dart';

class JoinQueue extends StatefulWidget {
  const JoinQueue({Key? key}) : super(key: key);

  @override
  State<JoinQueue> createState() => _JoinQueueState();
}

class _JoinQueueState extends State<JoinQueue> {
  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  void _showTimePicker1() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value1) {
      setState(() {
        _timeOfDay1 = value1!;
      });
    });
  }

  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 30);
  TimeOfDay _timeOfDay1 = TimeOfDay(hour: 5, minute: 30);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Color(0xFF179797),
        appBar: AppBar(
          title: Text("Diyagama Filling Station"),
          backgroundColor: Color.fromARGB(255, 83, 7, 2),
          elevation: 0,
        ),

        body: ListView(children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 15, top: 15),
            child: Text(
              "Current Fuel Status",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                //color: Color(0xFF179797),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, top: 20),
                    child: Text(
                      "Petrol(92 Octane)",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 125.0, top: 20, right: 5),
                    child: Text(
                      "Available",
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, top: 20),
                    child: Text(
                      "Petrol(92 Octane EURO 4)",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 60.0, top: 20, right: 5),
                    child: Text(
                      "Available",
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, top: 20),
                    child: Text(
                      "Diesel(Auto Diesel)",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 115.0, top: 20, right: 5),
                    child: Text(
                      "Available",
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, top: 20),
                    child: Text(
                      "Diesel(Lanka Super Diesel 4 star)",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, top: 20, right: 5),
                    child: Text(
                      "Available",
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, top: 20),
                    child: Text(
                      "Lamp Oil",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 180.0, top: 20, right: 5),
                    child:
                        Text("Not Available", style: TextStyle(fontSize: 16)),
                  )
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 25),
            child: Text(
              "Current Total Vehicles in fuel queue",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                //color: Color(0xFF179797),
              ),
            ),
          ),
          Column(children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 60.0, top: 20),
                  child: Text(
                    "Total Vehicles",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150.0, top: 20),
                  child: Text(
                    "30",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 80.0, top: 20),
                  child: Text(
                    "Car",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 230.0, top: 20),
                  child: Text(
                    "3",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 80.0, top: 20),
                  child: Text(
                    "Van",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 230.0, top: 20),
                  child: Text(
                    "6",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 80.0, top: 20),
                  child: Text(
                    "Bus",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 230.0, top: 20),
                  child: Text(
                    "5",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 80.0, top: 20),
                  child: Text(
                    "Lorry",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 220.0, top: 20),
                  child: Text(
                    "3",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 80.0, top: 20),
                  child: Text(
                    "Three Wheel",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 155.0, top: 20),
                  child: Text(
                    "3",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 80.0, top: 20),
                  child: Text(
                    "Motor Bike",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 170.0, top: 20),
                  child: Text(
                    "4",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ]),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Arrival Time",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          _timeOfDay.format(context).toString(),
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        MaterialButton(
                          onPressed: _showTimePicker,
                          child: Text("Pick Time",
                              style: TextStyle(color: Colors.white)),
                          color: Color.fromARGB(255, 114, 9, 1),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  // Padding(padding: EdgeInsets.only(left: 10)),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Depart Time",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  // Padding(padding: EdgeInsets.only(left: 20)),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _timeOfDay1.format(context).toString(),
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 15)),
                        MaterialButton(
                          onPressed: _showTimePicker1,
                          child: Text("Pick Time",
                              style: TextStyle(color: Colors.white)),
                          color: Color.fromARGB(255, 114, 9, 1),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          Container(
            height: 100,
            width: 0,
            //color: Color(0xFF179797),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 20,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 60, 0, 0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        //side: BorderSide(color: Colors.white,width: 3.0),
                        side: BorderSide(
                            color: Color.fromARGB(255, 112, 8, 1), width: 2.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ExitQueue()));
                  },
                  child: Text(
                    'Join Queue',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
