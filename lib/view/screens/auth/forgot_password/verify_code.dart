import 'package:ecommerce_app/controller/auth/verifycode_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('39'.tr),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
        child: ListView(
          children: [
            const SizedBox(height: 20.0),
            Text('40'.tr, style: Theme.of(context).textTheme.headlineLarge),
            Text('41'.tr ),
            const Text('test@gmail.com'),
            const SizedBox(height: 20.0),
            OtpTextField(
              fieldWidth: 50.0,
              borderRadius: BorderRadius.circular(12.0),
              numberOfFields: 5,
              borderColor: const Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode){
                controller.goToResetPassword();
              }, // end onSubmit
            ),
            // AuthCustomButton(onTap: () {}, text: 'Check Code'),

          ],
        ),
      ),
    );
  }
}
