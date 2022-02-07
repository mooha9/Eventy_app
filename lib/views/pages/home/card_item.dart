import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CardItem extends GetView {
  final Map card;
  CardItem({required this.card});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20, bottom: 10),
      child: Stack(children: [
        Container(
          height: 180,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 140,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                Colors.black.withOpacity(0.2),
                Colors.black.withOpacity(0.5),
              ],
              stops: [0, 1],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Column(children: [
            Text(
              card['name'],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 4.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ]),
            ),
            Divider(
              height: 10,
            ),
          ]),
        )
      ]),
    );
  }
}
