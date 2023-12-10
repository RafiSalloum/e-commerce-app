import 'package:ecommerce_app/controller/auth/resetpassword_controller.dart';
import 'package:ecommerce_app/core/functions/input_validation.dart';
import 'package:ecommerce_app/view/widgets/auth/auth_button.dart';
import 'package:ecommerce_app/view/widgets/auth/login_tff.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
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
              Text('43'.tr, style: Theme.of(context).textTheme.headlineLarge),
              Text('44'.tr),
              const SizedBox(height: 20.0),
              CustomTextFormField(
                  isPassword: true,
                  inputType: TextInputType.visiblePassword,
                  valid: (val) {
                    return inputValidation(val!, 5, 30, 'password');
                  },
                  myController: controller.passwordController,
                  label: '19'.tr,
                  hint: '34'.tr,
                  suffix: const Icon(Icons.lock)),
              CustomTextFormField(
                isPassword: controller.isPass,
                inputType: TextInputType.visiblePassword,
                valid: (val) {
                  return inputValidation(val!, 5, 30, 'password');
                },
                func: () {
                  controller.showPass();
                },
                myController: controller.rePasswordController,
                label: '45'.tr,
                hint: '46'.tr,
                suffix: controller.isPass == true
                    ? const Icon(Icons.lock)
                    : const Icon(Icons.lock_outline),
              ),
              AuthCustomButton(
                  onTap: () {
                    controller.goToSuccess();
                  },
                  text: '33'.tr),
            ],
          ),
        ),
      ),
    );
  }
}
