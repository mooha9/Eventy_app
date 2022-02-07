// import 'package:EventySA/controllers/auth/signin_controller.dart';
// import 'package:EventySA/util/over_viewdata_event.dart';
// import 'package:EventySA/views/pages/home/event_item.dart';
// import 'package:EventySA/views/pages/signin/sign_in.dart';
// ignore_for_file: unnecessary_import, unused_import, unused_element, dead_code

import 'dart:io';

import 'package:EventySA/controllers/auth/signin_controller.dart';
import 'package:EventySA/controllers/card/create_card_controller.dart';
import 'package:EventySA/controllers/profile/profile_controller.dart';
import 'package:EventySA/views/pages/drawer/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:logger/logger.dart';
import 'package:flutter/cupertino.dart';

class ProfilePage extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.put<SignInController>(SignInController());
    Logger().d("ProfileView list " + "${controller.cardList.length}");

    return GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: (controller) => DefaultTabController(
              initialIndex: 1,
              length: 2,
              child: Scaffold(
                endDrawer: AppDrawer(),
                backgroundColor: Colors.teal[50],
                appBar: AppBar(
                  backgroundColor: Colors.teal[100],
                  toolbarHeight: 250,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(10),
                    ),
                  ),
                  centerTitle: true,
                  title: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(),
                          child: Container(
                            width: double.infinity,
                            height: 350.0,
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                      backgroundColor: Colors.teal,
                                      backgroundImage: NetworkImage(
                                        "${controller.user!.profileImage?.name}",
                                      ),
                                      radius: 50.0,
                                      foregroundColor: Colors.red),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "${controller.user!.firstName}",
                                    style: TextStyle(
                                        fontSize: 35.0, color: Colors.black),
                                  ),
                                  Text(
                                    "@${controller.user!.username}",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.grey[700]),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "${controller.user?.bio}",
                                    style: TextStyle(
                                        fontSize: 18.0, color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                  bottom: TabBar(
                    //isScrollable: true,
                    indicatorColor: Colors.black54,
                    indicatorWeight: 4,

                    labelColor: Colors.teal,
                    tabs: [
                      Tab(
                          icon: Icon(
                            Icons.festival_rounded,
                            color: Colors.black54,
                          ),
                          text: 'My Events'),
                      Tab(
                          icon: Icon(
                            Icons.credit_card,
                            color: Colors.black54,
                          ),
                          text: 'My Cards'),
                    ],
                  ),
                  titleSpacing: 20,
                ),
                body: TabBarView(
                  children: [
                    buildPage1('My Events'),
                    buildPage2(context),
                  ],
                ),
              ),
            ));
  }
}

Widget buildPage1(String text) {
  return GetBuilder<ProfileController>(builder: (c) {
    Logger().d(c.eventList.length);
    if (c.eventList.length == 0) {
      return Container(
        child: Center(
            child: Text(
          "You don't have events",
        )),
      );
    }

    return Container(
      child: Center(
          child: Text(
        "Loading..",
      )),
    );
  });
}

final _controller = Get.put(CreateCardContoller());
final GlobalObjectKey<FormState> _formKey =
    GlobalObjectKey<FormState>("_UploadFormState");

Widget buildPage2(BuildContext context) {
  return GetBuilder<ProfileController>(builder: (c) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 250.0,
        child: ListView(scrollDirection: Axis.horizontal, children: [
          // SizedBox(width: 20,),

          Column(children: [
            Container(
                height: 240.0,
                width: 388,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.teal[300],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 240,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Mohammed Alfayez" +
                                  _controller.cardName.toString(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Qassim - Buraydah" + _controller.city.toString(),
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Photographer for events" +
                                  _controller.tagLine.toString(),
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 75,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 240,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "alfayez355@gmail.com" +
                                  _controller.email.toString(),
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue[900]),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "https://twitter.com/M_7d_f" +
                                  _controller.urlWork.toString(),
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue[900]),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "0546436737" + _controller.phoneNumber.toString(),
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue[900]),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Serveic Provider" +
                                    _controller.category.toString(),
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey[800]),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Photographer" +
                                    _controller.workType.toString(),
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Image.asset(
                                "assets/images/cardLogo.png",
                                width: 120,
                                height: 120,
                              )
                              // Obx(()=>_controller.selectedImagePath.value == ""?

                              //       Image.file(File("EventySA/assets/images/cardLogo.png")):
                              //       Text("")
                              //       ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ))
          ]),
        ]),
      ),
    );
    return Container(
      child: Center(
          child: Text(
        "Loading..",
      )),
    );
  });
}
