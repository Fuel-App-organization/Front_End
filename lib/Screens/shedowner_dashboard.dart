import 'package:flutter/material.dart';
import 'package:second/Screens/fuelqueue.dart';
import 'package:second/Screens/updatefuelstatus.dart';

class ShedOwnerDashBoard extends StatelessWidget {
  const ShedOwnerDashBoard({super.key});

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Diyagama Filling Station",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 255, 254, 254),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          // backgroundColor: Color.fromARGB(255, 90, 0, 0),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black, Color.fromARGB(255, 153, 1, 1)],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft)),
          ),
          bottom: TabBar(
              indicatorColor: Color.fromARGB(255, 254, 254, 254),
              indicatorWeight: 7,
              tabs: [
                Tab(
                  icon: Icon(Icons.update_outlined),
                  text: "Update Fuel Status",
                ),
                Tab(
                  icon: Icon(Icons.car_crash),
                  text: "Fuel Queue",
                )
              ]),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        body: TabBarView(
          children: [UpdateFuel(), FuelQueue()],
        ),
      ));
}
