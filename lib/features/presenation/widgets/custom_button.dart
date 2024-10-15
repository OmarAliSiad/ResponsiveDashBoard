import 'package:flutter/material.dart';
import '../../../core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? textColor;
  final String title;
  const CustomButton(
      {super.key, this.backgroundColor, this.textColor, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 62,
        child: MaterialButton(
          elevation: 0,
          color: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          onPressed: () {},
          child: Text(
            title,
            style: AppStyles.styleSemiBold18().copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
