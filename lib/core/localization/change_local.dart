import 'package:ecommerce_app/core/constants/app_theme.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController{

  Locale? language;
  MyServices myServices = Get.find();
  ThemeData appTheme = englishTheme;

  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    myServices.sharedPreferences.setString('lang', langCode);
    Get.updateLocale(locale);
    appTheme = langCode == 'ar' ? arabicTheme : englishTheme;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString('lang');
    if(sharedPrefLang == 'ar'){
      language = const Locale('ar');
      appTheme = arabicTheme;
    } else if(sharedPrefLang == 'en') {
      language = const Locale('en');
      appTheme = englishTheme;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = englishTheme;
    }
    super.onInit();
  }
}