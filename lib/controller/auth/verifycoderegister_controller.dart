import 'package:ecommerce_app/core/constants/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeRegisterController extends GetxController {
  checkCode();
  goToSuccessRegister();
}

class VerifyCodeRegisterControllerImp extends VerifyCodeRegisterController {
  late String verifyCode;
  @override
  goToSuccessRegister() {
    Get.offNamed(AppRoute.successRegister);
  }

  @override
  checkCode() {

  }

  @override
  void onInit() {
    super.onInit();
  }
}