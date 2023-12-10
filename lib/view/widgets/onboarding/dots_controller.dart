import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/core/constants/color.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyDotsController extends StatelessWidget {
  const MyDotsController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: SmoothPageIndicator(
          effect: const JumpingDotEffect(
              activeDotColor: ColorApp.primaryColor,
              dotColor: Colors.grey,
              radius: 10.0,
              dotWidth: 15.0,
              dotHeight: 15.0,
          ),
          count: onBoardingList.length,
          controller: controller.pageController,
        ),
      ),
    );
  }
}
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// ...List.generate(
// onBoardingList.length,
// (index) => AnimatedContainer(
// curve: Curves.bounceInOut,
// margin: const EdgeInsets.all(5.0),
// duration: const Duration(microseconds: 800),
// width: controller.currentIndex == index ? 18.0 : 12.0,
// height: 12.0,
// decoration: BoxDecoration(
// color: ColorApp.primaryColor,
// borderRadius: BorderRadius.circular(12.0),
// ),
// ),
// ),
// ],
// ),