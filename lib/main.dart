import 'package:ecommerce_app/binding.dart';
import 'package:ecommerce_app/core/localization/change_local.dart';
import 'package:ecommerce_app/core/localization/local.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/view/screens/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      title: 'Flutter Demo',
      initialBinding: MyBinding(),
      locale: controller.language,
      theme: controller.appTheme,
      // home: const SuccessRegister(),
      // home: const Language(),
      // routes: routes,
      getPages: routes,
    );
  }
}
