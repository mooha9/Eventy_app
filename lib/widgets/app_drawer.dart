import 'package:eventy_app/screens/manage_card.dart';
import 'package:eventy_app/screens/manage_event.dart';
import 'package:eventy_app/screens/participate.dart';
import 'package:flutter/material.dart';
import 'package:eventy_app/screens/setting.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            color: Colors.teal[200],
            child: Text(
              'Options',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text(
              'Manage my card',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.credit_card,
              size: 30,
              color: Colors.teal[400],
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return ManageCard();
                  },
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              'Manage my event',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.festival_sharp,
              size: 30,
              color: Colors.teal[400],
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return ManageEvent();
                  },
                ),
              );
            },
          ),
          Divider(),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text(
              'Participate with Event',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.pan_tool_rounded,
              size: 30,
              color: Colors.teal[400],
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Participate();
                  },
                ),
              );
            },
          ),
          Divider(),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text(
              'Setting',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.settings,
              size: 30,
              color: Colors.teal[400],
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Setting();
                  },
                ),
              );
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
