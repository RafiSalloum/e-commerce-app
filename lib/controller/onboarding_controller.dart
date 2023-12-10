import 'package:ecommerce_app/core/constants/routes.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  int currentIndex = 0;
  late PageController pageController;
  MyServices myServices = Get.find();

  @override
  next() {
    currentIndex++;
    if (currentIndex > onBoardingList.length - 1) {
      myServices.sharedPreferences.setBool('SeenOnboarding', true);
      Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(currentIndex,
          duration: const Duration(microseconds: 500),
          curve: Curves.easeInOutBack);
    }
  }

  @override
  onPageChanged(int index) {
    currentIndex = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
