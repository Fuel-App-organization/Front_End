import 'package:flutter/material.dart';
import 'package:second/Screens/profileS.dart';

import 'settings/settings.dart';

class SideBar2 extends StatelessWidget {
  const SideBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 54, 1, 1).withOpacity(0.8),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Diyagama Filling Station',
                style: TextStyle(fontSize: 23),
              ),
              accountEmail:
                  Text('diyagama@gmail.com', style: TextStyle(fontSize: 18)),
              currentAccountPicture: CircleAvatar(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileS(),
                        ));
                  },
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/6.jpg',
                      fit: BoxFit.cover,
                      width: 90,
                      height: 150,
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.help,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                'Help',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                'App Settings',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Settings()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
