import 'package:ecommerce_app/controller/auth/successresetpassword_controller.dart';
import 'package:ecommerce_app/core/constants/color.dart';
import 'package:ecommerce_app/view/widgets/auth/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessForgotPassword extends StatelessWidget {
  const SuccessForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller =
        Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text('37'.tr),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Icon(
                Icons.check_circle_outline_sharp,
                size: 150.0,
                color: ColorApp.primaryColor,
              ),
            ),
            Text('36'.tr, style: Theme.of(context).textTheme.headlineLarge, textAlign: TextAlign.center),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: AuthCustomButton(
                  text: '31'.tr,
                  onTap: () {
                    controller.goToLoginPage();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
