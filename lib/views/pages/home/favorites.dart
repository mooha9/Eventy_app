import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class FavoritePage extends GetView {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        backgroundColor: Colors.teal[100],
        toolbarHeight: 90,
        elevation: 10,
         shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
      ),
    ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right:5.0),
              child: Row(
                children: [
                  Text(
                    'Favorite',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(width: 10,),
                   Icon(
              Icons.favorite_border_rounded,
              color: Color.fromARGB(240,74, 189, 159),
              size: 33,
            ),
                ],
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
