import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton({
    super.key,
    required this.text,
    required this.function,
    this.textAlign = TextAlign.center,
  });

  final String text;
  final Function function;
  TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        function();
      },
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
          fontSize: 16.00.sp,
        ),
      ),
    );
  }
}
