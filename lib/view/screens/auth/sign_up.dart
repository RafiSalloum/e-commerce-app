import 'package:ecommerce_app/controller/auth/signup_controller.dart';
import 'package:ecommerce_app/core/functions/exit_alert.dart';
import 'package:ecommerce_app/core/functions/input_validation.dart';
import 'package:ecommerce_app/view/widgets/auth/auth_button.dart';
import 'package:ecommerce_app/view/widgets/auth/login_text.dart';
import 'package:ecommerce_app/view/widgets/auth/login_tff.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterControllerImp controller = Get.put(RegisterControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('17'.tr),
        elevation: 0.0,
      ),
      body: WillPopScope(
        onWillPop: exitAlert,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
          child: Form(
            key: controller.formKey,
            child: ListView(
              children: [
                const SizedBox(height: 20.0),
                // const Text('Welcome Back'),
                Text('24'.tr),
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
                CustomTextFormField(
                    inputType: TextInputType.text,
                    valid: (val) {
                      return inputValidation(val!, 5, 20, 'username');
                    },
                    myController: controller.userNameController,
                    label: '20'.tr,
                    hint: '23'.tr,
                    suffix: const Icon(Icons.person)),
                CustomTextFormField(
                    inputType: TextInputType.phone,
                    valid: (val) {
                      return inputValidation(val!, 5, 20, 'phone');
                    },
                    myController: controller.phoneController,
                    label: '21'.tr,
                    hint: '22'.tr,
                    suffix: const Icon(Icons.phone)),
                CustomTextFormField(
                  isPassword: controller.isPass,
                  inputType: TextInputType.visiblePassword,
                  valid: (val) {
                    return inputValidation(val!, 5, 30, 'password');
                  },
                  func: () {
                    controller.showPass();
                  },
                  myController: controller.passwordController,
                  label: '19'.tr,
                  hint: '13'.tr,
                  suffix: controller.isPass == true
                      ? const Icon(Icons.lock)
                      : const Icon(Icons.lock_outline),
                ),
                AuthCustomButton(
                    onTap: () {
                      controller.signUp();
                    },
                    text: '17'.tr),
                CustomLoginText(
                    text: '25'.tr,
                    buttonText: '9'.tr,
                    onPress: () {
                      controller.goToSignIn();
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
