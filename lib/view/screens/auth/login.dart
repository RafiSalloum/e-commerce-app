import 'package:ecommerce_app/controller/auth/login_controller.dart';
import 'package:ecommerce_app/core/functions/exit_alert.dart';
import 'package:ecommerce_app/core/functions/input_validation.dart';
import 'package:ecommerce_app/view/widgets/auth/auth_button.dart';
import 'package:ecommerce_app/view/widgets/auth/auth_logo.dart';
import 'package:ecommerce_app/view/widgets/auth/login_text.dart';
import 'package:ecommerce_app/view/widgets/auth/login_tff.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('9'.tr),
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
                const AuthLogo(),
                const SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    '10'.tr,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Text(
                  '11'.tr,
                  style: const TextStyle(height: 1.2),
                ),
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
                GetBuilder<LoginControllerImp>(
                  builder: (controller) => CustomTextFormField(
                    isPassword: controller.isPass,
                    inputType: TextInputType.visiblePassword,
                    valid: (val) {
                      return inputValidation(val!, 5, 30, 'password');
                    },
                    func: () {
                      controller.showPass();
                      print('PRESSED');
                    },
                    myController: controller.passwordController,
                    label: '19'.tr,
                    hint: '13'.tr,
                    suffix: controller.isPass == true
                        ? const Icon(Icons.lock)
                        : const Icon(Icons.lock_outline),
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.goToForgotPassword();
                  },
                  child: Text(
                    '14'.tr,
                    textAlign: TextAlign.end,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                AuthCustomButton(
                    onTap: () {
                      controller.login();
                    },
                    text: '15'.tr),
                CustomLoginText(
                    text: '16'.tr,
                    buttonText: '17'.tr,
                    onPress: () {
                      controller.goToSignUp();
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
