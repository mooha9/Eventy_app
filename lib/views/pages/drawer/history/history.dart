import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class History extends GetView {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
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
              centerTitle: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 40.0),
                    child: Text(
                      'History',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 28,
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
