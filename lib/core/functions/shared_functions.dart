import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void customSnackBar({
  required BuildContext context,
  required String text,
  required Color color,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      content: Text(
        text,
        style: TextStyle(
          fontSize: 14.00.sp,
          color: Colors.white,
        ),
      ),
    ),
  );
}
