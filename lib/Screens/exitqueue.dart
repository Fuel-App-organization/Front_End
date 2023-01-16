import 'package:flutter/material.dart';

class ExitQueue extends StatefulWidget {
  const ExitQueue({Key? key}) : super(key: key);

  @override
  State<ExitQueue> createState() => _ExitQueueState();
}

class _ExitQueueState extends State<ExitQueue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text("Diyagama Filling Station"),
        backgroundColor: Color.fromARGB(255, 48, 0, 0),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/6.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 120.0, left: 60, right: 60, bottom: 60),
              child: Container(
                height: 90,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          //side: BorderSide(color: Colors.white,width: 3.0),
                          side: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //     context, MaterialPageRoute(builder: (_) => Login()));
                    },
                    child: Text(
                      "Exit before fuel pump",
                      style: TextStyle(fontSize: 23),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(60.0),
              child: Container(
                height: 90,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          //side: BorderSide(color: Colors.white,width: 3.0),
                          side: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //     context, MaterialPageRoute(builder: (_) => Login()));
                    },
                    child: Text(
                      "Exit after fuel pump",
                      style: TextStyle(fontSize: 23),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
