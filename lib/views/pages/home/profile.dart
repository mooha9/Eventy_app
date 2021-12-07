// import 'package:eventy_app/controllers/auth/signin_controller.dart';
import 'package:eventy_app/controllers/auth/signin_controller.dart';
import 'package:eventy_app/controllers/profile/profile_controller.dart';
import 'package:eventy_app/util/over_viewdata_event.dart';
import 'package:eventy_app/views/pages/drawer/app_drawer.dart';
import 'package:eventy_app/views/pages/home/event_item.dart';
// import 'package:eventy_app/views/pages/signin/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:logger/logger.dart';
import 'package:flutter/cupertino.dart';

class ProfilePage extends GetView<ProfileController> {
  // final _controller = ProfileController();
  
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<ProfileController>(() =>ProfileController());
    Get.put<SignInController>(SignInController());
    Logger().d("ProfileView list " + "${controller.cardList.length}");
  

  return GetBuilder<ProfileController>(
                    init: ProfileController(),
                    builder: (controller) =>
  
  DefaultTabController(
    
        initialIndex: 1,
        length: 2,
        child: Scaffold(
          
          endDrawer: AppDrawer(
            
          ),
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
                              "${ controller.user!.profileImage?.name}",
                              ),
                              radius: 50.0,
                              foregroundColor: Colors.red
                            ),
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
                                  fontSize: 18.0, color: Colors.grey[700]),
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
              buildPage1('History'),
              buildPage2('Card'),
            ],
          ),
        ),)
      );
  }
 
  }
  Widget buildPage1(String text) => Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 800.0,
              margin: new EdgeInsets.symmetric(vertical: 2.0),
              child: GridView.builder(
                  itemCount: events.length,
                  itemBuilder: (BuildContext context, int index) {
                    Map event = events[index];
                    return EventItem(
                      event: event,
                    );
                  },
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 450,
                    childAspectRatio: 4 / 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ))),
        ),
      );

  Widget buildPage2(String text) => Center(
        child: Container(
          height: 800.0,
          margin: new EdgeInsets.symmetric(vertical: 2.0),
          child: Card(),
        ),
      );

