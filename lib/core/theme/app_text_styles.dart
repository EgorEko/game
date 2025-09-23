import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

abstract class AppTextStyles {
  static TextStyle loadingPrimaryTextStyle = GoogleFonts.rubikMonoOne(
    color: AppColors.white,
    fontWeight: FontWeight.w400,
    fontSize: 75.sp,
  );

  static TextStyle loadingSecondaryTextStyle = GoogleFonts.rubikMonoOne(
    fontWeight: FontWeight.w600,
    fontSize: 75.sp,
    foreground: Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.sp
      ..color = AppColors.borderColor,
  );
}
