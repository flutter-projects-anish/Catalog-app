import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blueGrey,
        child: ListView(
          children: const [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.blueGrey),
                  margin: EdgeInsets.zero,
                  accountEmail: Text("Anishgharti10@gmail.com"),
                  accountName: Text("Anish Gharti"),
                  currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage("images/anish.jpg")),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.5,
                style: TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.settings,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.5,
                style: TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
