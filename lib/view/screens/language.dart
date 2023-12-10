import 'package:ecommerce_app/core/constants/routes.dart';
import 'package:ecommerce_app/core/localization/change_local.dart';
import 'package:ecommerce_app/view/widgets/language/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('1'.tr, style: Theme.of(context).textTheme.headlineLarge,),
          const SizedBox(height: 10.0),
          LanguageButton(lang: 'Ar', onTap: (){
            controller.changeLang('ar');
            Get.toNamed(AppRoute.onboarding);
          }),
          LanguageButton(lang: 'En', onTap: (){
            controller.changeLang('en');
            Get.toNamed(AppRoute.onboarding);
          }),

        ],
      ),
    );
  }
}
