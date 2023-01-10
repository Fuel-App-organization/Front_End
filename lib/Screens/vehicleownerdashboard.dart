import 'package:flutter/material.dart';
import 'package:second/Screens/shed.dart';
import 'package:second/model/shed_model.dart';

class VehicleOwnerDashBoard extends StatefulWidget {
  const VehicleOwnerDashBoard({super.key});

  @override
  State<VehicleOwnerDashBoard> createState() => _CarOwnerDashBoardState();
}

class _CarOwnerDashBoardState extends State<VehicleOwnerDashBoard> {
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
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
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
                                  builder: ((context) => ShedPage())));
                        }),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
