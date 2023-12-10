import 'package:get/get.dart';

inputValidation(String value, int min, int max, String type) {
  if (type == 'username') {
    if (!GetUtils.isUsername(value)) {
      return 'Username is not valid';
    }
  }
  if (type == 'email') {
    if (!GetUtils.isEmail(value)) {
      return 'Email is not valid';
    }
  }
  if (type == 'phone') {
    if (!GetUtils.isPhoneNumber(value)) {
      return 'Phone Number is not valid';
    }
  }
  if(value.isEmpty){
    return 'Value must not blank';
  }
  if(value.length < min){
    return 'Password must not be less than $min';
  }
  if(value.length > max){
    return 'Password must not be more than $max';
  }
}
