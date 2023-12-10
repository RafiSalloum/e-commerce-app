import 'package:ecommerce_app/core/constants/color.dart';
import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  final String lang;
  final void Function()? onTap;
  const LanguageButton({super.key, required this.lang, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 8.0),
      width: double.infinity,
      height: 65.0,
      child: MaterialButton(
        // elevation: 20.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0), side: const BorderSide(width: 1.6, color: ColorApp.primaryColor)),
        color: Colors.white,
        onPressed: onTap,
        child: Text(lang, style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: ColorApp.primaryColor),),
      ),
    );
  }
}
