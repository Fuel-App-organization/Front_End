import 'package:flutter/material.dart';

import 'accountsettings.dart';
import 'editprofile.dart';
import 'passwordsettings.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(63, 0, 0, 1),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color.fromARGB(255, 248, 247, 247),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          // Image(image: ExactAssetImage('assets/top.jpg')),
          SizedBox(
            height: 80.0,
          ),
          Text(
            'FUEL QUEUE',
            style:
                TextStyle(fontSize: 40.0, color: Color.fromRGBO(255, 0, 0, 1)),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text('Settings',
              style: TextStyle(fontSize: 20.0, color: Colors.white),
              textAlign: TextAlign.center),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 30.0,
              ),
              Divider(
                color: Color.fromARGB(255, 23, 140, 77),
              ),
              ListTile(
                leading: Icon(
                  Icons.manage_accounts,
                  color: Colors.white,
                ),
                title: Text(
                  "Acount Settings",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return AccountSettings();
                  }));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.manage_accounts,
                  color: Colors.white,
                ),
                title: Text("Password Settings",
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return PasswordSettings();
                  }));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.manage_accounts,
                  color: Colors.white,
                ),
                title:
                    Text("Edit Profile", style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return EditProfile();
                  }));
                },
              ),
              //
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [],
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 0, 11, 3),
    );
  }
}
