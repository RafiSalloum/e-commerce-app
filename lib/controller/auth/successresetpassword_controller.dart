import 'package:ecommerce_app/core/constants/routes.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController{
  goToLoginPage();

}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController{
  @override
  goToLoginPage() {
    Get.offAllNamed(AppRoute.login);
  }

}