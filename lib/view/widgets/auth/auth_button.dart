import 'package:ecommerce_app/core/constants/color.dart';
import 'package:flutter/material.dart';

class AuthCustomButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const AuthCustomButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 50.0,
        child: MaterialButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              // side: const BorderSide(width: 1.5),
          ),
          color: ColorApp.primaryColor,
          onPressed: onTap,
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
