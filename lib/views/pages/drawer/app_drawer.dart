import 'package:eventy_app/views/pages/drawer/history/history.dart';
import 'package:eventy_app/views/pages/drawer/manage_card/manage_card.dart';
import 'package:eventy_app/views/pages/drawer/manage_event/manage_event.dart';
import 'package:eventy_app/views/pages/drawer/participate_event/participate.dart';
import 'package:flutter/material.dart';
// import 'package:eventy_app/views/pages/drawer/settings/settings.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AppDrawer extends GetView {
 
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
            height: 10,
          ),
          ListTile(
            title: Text(
              'Manage event',
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
          ListTile(
            title: Text(
              'Manage card',
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
              'Event Participate',
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
          ListTile(
            title: Text(
              'History',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Icon(
              Icons.history_rounded,
              size: 30,
              color: Colors.teal[400],
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return History();
                  },
                ),
              );
            },
          ),
           Divider(),
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
              Get.toNamed("/Setting");
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
