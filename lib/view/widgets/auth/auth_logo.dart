import 'package:ecommerce_app/core/constants/image_asset.dart';
import 'package:flutter/material.dart';

class AuthLogo extends StatelessWidget {
  const AuthLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(ImageAsset.logo, height: 180.0);
  }
}
