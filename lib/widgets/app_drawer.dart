import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  Widget buildListTile(String title, IconData icon, Function onTapLink) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: Colors.teal[400],
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {},
    );
  }

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
              'Option',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          SizedBox(height: 40),
          buildListTile(
            'Manage my profile',
            Icons.person_pin_circle_outlined,
            () {
// here put the target screen
            },
          ),
          buildListTile(
            'Manage my card',
            Icons.credit_card,
            () {},
          ),
          buildListTile(
            'Manage my event',
            Icons.festival_sharp,
            () {},
          ),
        ],
      ),
    );
  }
}
