import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static TextStyle pacifico400Style64 = TextStyle(
    fontFamily: 'Pacifico',
    fontSize: 64,
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryColor,
  );
  static TextStyle poppins500Style24 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  static TextStyle poppins500Style16 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.grey,
  );
  static TextStyle poppins600Style28 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: Color(0xFF333333),
  );
  static TextStyle poppins400Style16 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Color(0xFF07122E),
  );
}
