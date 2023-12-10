import 'package:ecommerce_app/core/constants/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class RegisterController extends GetxController {
  signUp();
  goToSignIn();
}

class RegisterControllerImp extends RegisterController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController userNameController;
  late TextEditingController phoneController;
  bool isPass = true;

  showPass(){
    isPass = isPass == true ? false : true;
    update();
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.signIn);
  }

  @override
  signUp() {
    FormState? formData = formKey.currentState;
    if(formData!.validate()){
      Get.offNamed(AppRoute.verifyCodeRegister);
      // Get.delete<RegisterControllerImp>();
      return 'Valid';
    } else {
      return 'Not Valid';
    }
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    userNameController = TextEditingController();
    phoneController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    userNameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

}