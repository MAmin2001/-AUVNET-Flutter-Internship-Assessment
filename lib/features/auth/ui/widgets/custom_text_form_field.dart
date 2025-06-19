import 'package:auvnet_e_commerce_task/core/themeing/colors_manager.dart';
import 'package:auvnet_e_commerce_task/core/themeing/styles_manager.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.prefixIcon,
    required this.textInputType,
    required this.validator,
    this.controller,
  });
  final String hint;
  final IconData prefixIcon;
  final TextInputType textInputType;
  final Function(String?) validator;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: TextFormField(
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: textInputType,
        decoration: InputDecoration(
          fillColor: ColorsManager.lightGeryColor.withOpacity(0.2),
          hintStyle: StylesManager.font14MulishLightBlack,
          hintText: hint,
          filled: true,
          prefixIcon: Icon(prefixIcon, color: Colors.black.withOpacity(0.2)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: ColorsManager.lightGeryColor.withOpacity(0.2),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: ColorsManager.lightGeryColor.withOpacity(0.2),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        style: StylesManager.font14MulishLightBlack,
        validator: (value) {
          return validator(value);
        },
      ),
    );
  }
}
