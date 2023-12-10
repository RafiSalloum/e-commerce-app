import 'package:ecommerce_app/core/constants/color.dart';
import 'package:flutter/material.dart';

class CustomLoginText extends StatelessWidget {
  final String text;
  final String buttonText;
  final void Function()? onPress;
  const CustomLoginText({super.key, required this.text, required this.buttonText, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        InkWell(
          onTap: onPress,
          child: Text(buttonText, style: const TextStyle(fontWeight: FontWeight.bold, color: ColorApp.primaryColor),),
        ),
      ],
    );
  }
}
