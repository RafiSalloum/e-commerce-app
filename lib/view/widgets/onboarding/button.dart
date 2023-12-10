import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyButton extends GetView<OnBoardingControllerImp> {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: MaterialButton(
        elevation: 12.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),
            // side: const BorderSide(width: 1.5),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 120.0),
        color: ColorApp.primaryColor,
        textColor: Colors.white,
        onPressed: () {
          controller.next();
        },
        child: Text(
            '8'.tr, style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
