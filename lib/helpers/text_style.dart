import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle bigTitle = GoogleFonts.poppins(
    fontSize: 30.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );

  static TextStyle title = GoogleFonts.poppins(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  static TextStyle subTitlePrimary = GoogleFonts.poppins(
    color: AppColors.primary,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle subTitleBlack = GoogleFonts.poppins(
    color: AppColors.black,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle subTitle = GoogleFonts.poppins(
    color: AppColors.grey,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static ButtonStyle textButtonStyle = TextButton.styleFrom(
  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  padding: EdgeInsets.zero,
  minimumSize: Size(50.w, 30.h),
  );

  static TextStyle subTitleSmall = GoogleFonts.poppins(
    color: AppColors.grey,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle headTitleSmall = GoogleFonts.poppins(
    color: AppColors.grey,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );



  static TextStyle headTitle = GoogleFonts.poppins(
    color: AppColors.darkGrey,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headTitleBlack = GoogleFonts.poppins(
    color: AppColors.black,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle subTitleOrder = GoogleFonts.poppins(
    color: AppColors.darkGrey,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle orderDetailsMedium = GoogleFonts.poppins(
    color: AppColors.darkGrey,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle subTitleOrderBlack = GoogleFonts.poppins(
    color: AppColors.black,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );

  // static TextStyle subTitleBlack = GoogleFonts.poppins(
  //   color: AppColors.black,
  //   fontSize: 12.sp,
  //   fontWeight: FontWeight.w500,
  // );

  static TextStyle orderApprove = GoogleFonts.poppins(
    color: const Color(0xFF28DB34),
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle orderReady = GoogleFonts.poppins(
    color: const Color(0xFFE19A3C),
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );

}
