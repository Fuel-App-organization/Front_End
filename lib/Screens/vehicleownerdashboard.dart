import 'dart:io';

import 'package:flutter/material.dart';
import 'package:second/Screens/joinqueue.dart';

import 'package:second/model/shed_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'sidebar.dart';

class VehicleOwnerDashBoard extends StatefulWidget {
  const VehicleOwnerDashBoard({super.key});

  @override
  State<VehicleOwnerDashBoard> createState() => _CarOwnerDashBoardState();
}

class _CarOwnerDashBoardState extends State<VehicleOwnerDashBoard> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchAreas();
  }

  static List<shedModel> main_shed_list = [
    shedModel("Diyagama Fuel Station", "Open"),
    shedModel("Kottawa Fuel Station", "Closed"),
    shedModel("Homagama Fuel Station", "Open"),
    shedModel("Horana Fuel Station", "Open"),
    shedModel("Katugastota Fuel Station", "Open"),
    shedModel("polonnaruwa Fuel Station", "Open"),
    shedModel("Anuradhapura Fuel Station", "Closed"),
    shedModel("Galle Fuel Station", "Open"),
    shedModel("Matara Fuel Station", "Closed"),
    shedModel("Wauniya Fuel Station", "Open"),
    shedModel("Jaffna Fuel Station", "Open"),
    shedModel("Hambantota Fuel Station", "Closed"),
    shedModel("Buttala Fuel Station", "Open"),
  ];

  fetchAreas() async {
    final prefs = await SharedPreferences.getInstance();
    final String? token = prefs.getString('authToken');
    var url =
        'https://fuelapp-backend-production.up.railway.app/api/v1/search_services';
    var response = await http.post(Uri.parse(url), headers: {
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.authorizationHeader: token.toString(),
    });
    // ignore: avoid_print
    print('Area get status' + response.statusCode.toString());
    if (response.statusCode == 200) {
      var jsoned_ = json.decode(response.body);
      var data = jsoned_['data'];
      data.forEach((item) =>
          {main_shed_list.add(shedModel(item['shedname'], item['status']))});
      print('LISTTTT: ' + main_shed_list.toString());
    } else {}
  }

  List<shedModel> display_list = List.from(main_shed_list);

  void updateList(String value) {
    setState(() {
      display_list = main_shed_list
          .where((element) =>
              element.shed_name!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(Icons.menu,
                color: Color.fromARGB(255, 255, 255, 255)),
            iconSize: 35,
          ),
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
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Search for a city",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: ((value) => updateList(value)),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(99, 120, 120, 120),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  hintText: "eg : Diyagama",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 60, 5, 1),
                  )),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: display_list.length,
                  itemBuilder: (context, index) => ListTile(
                        contentPadding: EdgeInsets.all(8.0),
                        title: Text(
                          display_list[index].shed_name!,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          display_list[index].status!,
                          style:
                              TextStyle(color: Color.fromARGB(255, 92, 1, 1)),
                        ),
                        onTap: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => JoinQueue())));
                        }),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
