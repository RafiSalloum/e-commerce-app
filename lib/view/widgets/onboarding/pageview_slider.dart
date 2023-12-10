import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyPageView extends GetView<OnBoardingControllerImp> {
  const MyPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (index){
        controller.onPageChanged(index);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) => Column(
        children: [
          Text(
            onBoardingList[index].title!,
            style: const TextStyle(
                fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60.0),
            child: Image.asset(onBoardingList[index].image!, width: Get.width / 1.2),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[index].body!,
              textAlign: TextAlign.center,
              style: const TextStyle(height: 1.5, fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}
