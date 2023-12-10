import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String hint;
  final Icon suffix;
  final void Function()? func;
  final bool? isPassword;
  final String? Function(String?)? valid;
  final TextEditingController? myController;
  final TextInputType? inputType;
  const CustomTextFormField(
      {super.key,
        this.func,
        this.isPassword,
      required this.label,
      required this.hint,
      required this.suffix,
      required this.myController,
      required this.valid,
      required this.inputType});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      child: TextFormField(
        obscureText: isPassword == null || isPassword == false ? false : true,
        keyboardType: inputType,
        // clipBehavior: Clip.antiAlias,
        // style: const TextStyle(height: 2.2),
        validator: valid,
        controller: myController,
        decoration: InputDecoration(
          hintText: hint,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: IconButton(icon: suffix, onPressed: func),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
          label: Text(label),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
