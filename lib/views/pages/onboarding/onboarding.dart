import 'package:eventy_app/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OnboardingPage extends StatelessWidget {
  final _controller = OnboardingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller.pageController,
              onPageChanged: _controller.selectedPageIndex,
              itemCount: _controller.onboardingPages.length,
              itemBuilder:(context, index){
              return Container(
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Image.asset(_controller.onboardingPages[index].imageAssets),
                  SizedBox(height: 50,),
                  Text(_controller.onboardingPages[index].title , style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.teal[600]),),
                  SizedBox(height: 10,),
                  Padding(
                    
                    padding: const EdgeInsets.all(8.0),
                    
                    child: Text(
                      _controller.onboardingPages[index].description , 
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.grey),),
                  ),
                ],),
              );
            }),
            Positioned(
              bottom: 30,
              left: 180,
              child: Row(
                children: List.generate(
                _controller.onboardingPages.length, 
                (index) =>Obx((){
                    return Container(
                      margin: const EdgeInsets.all(4),
                      height: 10, 
                      width: 10,
                      decoration: BoxDecoration(color: _controller.selectedPageIndex.value == index ? Colors.teal : Colors.grey, shape: BoxShape.circle),
                    );
                  }
                ),)),
            ),
            Positioned(
              right: 30,
              bottom: 30,
              child: FloatingActionButton(
                elevation: 0,
                onPressed: _controller.forwardAction,
                backgroundColor: Colors.teal,
                child: Obx((){
                  return Text(_controller.isLastPage ?"Start" : "Next");
                  }),
                )),
            Positioned(
              top: 20,
              right: 10,
              child: TextButton(onPressed:_controller.skipAction , child: Text('skip', style: TextStyle(color: Colors.grey),)))
          ],
        ),
      )
    );
  }
}