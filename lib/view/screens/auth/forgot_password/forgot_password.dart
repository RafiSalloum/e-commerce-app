import 'package:ecommerce_app/controller/auth/forgotpassword_controller.dart';
import 'package:ecommerce_app/core/functions/input_validation.dart';
import 'package:ecommerce_app/view/widgets/auth/auth_button.dart';
import 'package:ecommerce_app/view/widgets/auth/login_tff.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgotPasswordControllerImp controller =
        Get.put(ForgotPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('42'.tr),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
        child: Form(
          key: controller.formKey,
          child: ListView(
            children: [
              const SizedBox(height: 20.0),
              Text('27'.tr, style: Theme.of(context).textTheme.headlineLarge),
              Text('29'.tr),
              const SizedBox(height: 20.0),
              CustomTextFormField(
                  inputType: TextInputType.emailAddress,
                  valid: (val) {
                    return inputValidation(val!, 5, 100, 'email');
                  },
                  myController: controller.emailController,
                  label: '18'.tr,
                  hint: '12'.tr,
                  suffix: const Icon(Icons.email)),
              AuthCustomButton(
                  onTap: () {
                    controller.goToVerificationCode();
                  },
                  text: '27'.tr),
            ],
          ),
        ),
      ),
    );
  }
}
