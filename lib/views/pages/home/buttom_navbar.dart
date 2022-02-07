import 'package:EventySA/views/pages/home/home.dart';
import 'package:EventySA/views/pages/home/profile.dart';
import 'package:EventySA/views/pages/home/cards.dart';
import 'package:EventySA/views/pages/home/favorites.dart';
import 'package:EventySA/views/pages/home/search.dart';
import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final screens = [
    SearchPage(),
    FavoritePage(),
    HomePage(),
    CardPage(),
    ProfilePage(),
  ];
  int currentPage = 2;
  GlobalKey bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: screens[currentPage],
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(iconData: Icons.search, title: " ", onclick: () {}),
          TabData(
              iconData: Icons.favorite_border_outlined,
              title: " ",
              onclick: () {}),
          TabData(iconData: Icons.festival_sharp, title: " ", onclick: () {}),
          TabData(
              iconData: Icons.credit_card_rounded, title: " ", onclick: () {}),
          TabData(iconData: Icons.person_outline, title: " ", onclick: () {}),
        ],
        initialSelection: 2,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }
}
