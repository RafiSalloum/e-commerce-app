import 'package:ecommerce_app/core/constants/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late String verifyCode;

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }

  @override
  checkCode() {

  }

  @override
  void onInit() {
    super.onInit();
  }
}