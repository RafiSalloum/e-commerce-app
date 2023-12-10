import 'package:ecommerce_app/core/constants/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  checkEmail();
  goToSuccess();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController passwordController;
  late TextEditingController rePasswordController;
  bool isPass = true;

  showPass(){
    isPass = isPass == true ? false : true;
    update();
  }

  @override
  goToSuccess() {
    FormState? formData = formKey.currentState;
    if(formData!.validate()){
      Get.offNamed(AppRoute.successForgotPassword);
      return 'Valid';
    } else {
      return 'Not Valid';
    }
  }

  @override
  checkEmail() {

  }

  @override
  void onInit() {
    passwordController = TextEditingController();
    rePasswordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    passwordController.dispose();
    rePasswordController.dispose();
    super.dispose();
  }

}