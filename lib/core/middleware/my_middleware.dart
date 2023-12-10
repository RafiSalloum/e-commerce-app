import 'package:ecommerce_app/core/constants/routes.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if(myServices.sharedPreferences.getBool('SeenOnboarding') == true) {
      return const RouteSettings(name: AppRoute.login);
    }
  }
}
