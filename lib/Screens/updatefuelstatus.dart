import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdateFuel extends StatefulWidget {
  const UpdateFuel({super.key});

  @override
  State<UpdateFuel> createState() => _UpdateFuelState();
}

class _UpdateFuelState extends State<UpdateFuel> {
  bool val1 = true;
  bool val2 = false;
  bool val3 = true;
  bool val4 = true;
  bool val5 = true;

  onChangeFunction1(bool newValue1) {
    setState(() {
      val1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue2) {
    setState(() {
      val2 = newValue2;
    });
  }

  onChangeFunction3(bool newValue3) {
    setState(() {
      val3 = newValue3;
    });
  }

  onChangeFunction4(bool newValue4) {
    setState(() {
      val4 = newValue4;
    });
  }

  onChangeFunction5(bool newValue5) {
    setState(() {
      val5 = newValue5;
    });
  }

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
    return Scaffold(
      body: ListView(
        children: [
          Column(children: [
            Image(
              image: AssetImage("assets/images/types.jpg"),
            ),
          ]),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          "Fuel Arival Time",
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
                    padding: const EdgeInsets.all(10.0),
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
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Fuel Finish Time",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  // Padding(padding: EdgeInsets.only(left: 20)),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customSwitch('Petrol(92 Octane)', val1, onChangeFunction1),
              customSwitch('Petrol(92 Octane EURO 4)', val2, onChangeFunction2),
              customSwitch('Diesel(Auto Diesel)', val3, onChangeFunction3),
              customSwitch(
                  'Diesel(Lanka Super Diesel 4 star)', val4, onChangeFunction4),
              customSwitch('Lamp Oil', val5, onChangeFunction5)
            ],
          ),
        ],
      ),
    );
  }

  Widget customSwitch(String text, bool val, Function onChangeMethod) {
    return Padding(
      padding: EdgeInsets.only(top: 22.0, left: 16.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          CupertinoSwitch(
              trackColor: Colors.grey,
              activeColor: Colors.red,
              value: val,
              onChanged: (newValue) {
                onChangeMethod(newValue);
              })
        ],
      ),
    );
  }
}
