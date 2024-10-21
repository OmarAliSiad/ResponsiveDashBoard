import 'package:flutter/material.dart';
import '../../../core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  const CustomTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 20),
        fillColor: const Color((0xFFFAFAFA)),
        filled: true,
        hintFadeDuration: const Duration(milliseconds: 500),
        border: BuildOutlineInputBoder(),
        focusedBorder: BuildOutlineInputBoder(),
        enabledBorder: BuildOutlineInputBoder(),
        hintText: hintText,
        hintStyle: AppStyles.styleRegular16().copyWith(
          color: const Color(0xffAAAAAA),
        ),
      ),
    );
  }

  OutlineInputBorder BuildOutlineInputBoder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none);
  }
}
