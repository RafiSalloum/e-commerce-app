import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/view/widgets/onboarding/button.dart';
import 'package:ecommerce_app/view/widgets/onboarding/dots_controller.dart';
import 'package:ecommerce_app/view/widgets/onboarding/pageview_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
      // Solve Landscape Problem
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: MyPageView(),
              ),
              Expanded(
                child: Column(
                  children: [
                    MyDotsController(),
                    SizedBox(height: 10.0,),
                    MyButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
