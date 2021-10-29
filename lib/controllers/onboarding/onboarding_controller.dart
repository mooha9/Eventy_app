import 'package:eventy_app/models/onboarding/onboardingInfo.dart';
import 'package:eventy_app/views/pages/signup/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length -1;
  var pageController = PageController();

  skipAction (){
   pageController.jumpToPage(3);

  }
  forwardAction (){
    if (isLastPage){
      //go to home page 
      Get.toNamed("/SignUp");

    }else{

    pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);

    }
  }
  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('assets/images/onboarding1.png', 'Explore Events', 'Register events and Explore to visit easily '),
    OnboardingInfo('assets/images/onboarding2.png', 'Manage your Events', 'Create and manage yor event easily'),
    OnboardingInfo('assets/images/onboarding3.png', 'Participate Events', 'Help other in thir events'),
    OnboardingInfo('assets/images/onboarding4.png', 'Share business card', 'Create and share your business card')
  ];
}