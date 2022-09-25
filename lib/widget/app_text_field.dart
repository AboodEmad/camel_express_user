import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helpers/app_colors.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    this.prefixIcon,
    required this.keyboardType,
    required this.controller,
    this.focusedBorderColor = Colors.grey,
    this.obscureText = false,
    this.suffixIcon,
    this.width = 362,
    this.backgroundColor = AppColors.white,
    this.hintColor = AppColors.black,
    // this.minLines,
    // this.maxLines,
  }) : super(key: key);

  final IconData? prefixIcon;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final Color focusedBorderColor;
  final Widget? suffixIcon;
  final bool obscureText;
  final double width;
  final Color backgroundColor;
  final Color hintColor;

  // final int? minLines;
  // final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 39.h,
          width: width.w,
          child: TextField(
            // minLines: minLines,
            // maxLines: maxLines,
            controller: controller,
            keyboardType: keyboardType,
            style: GoogleFonts.poppins(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.black,
            ),
            obscureText: obscureText,
            decoration: InputDecoration(
              fillColor: backgroundColor,
              filled: true,
              contentPadding: EdgeInsets.zero,
              hintMaxLines: 1,
              // prefixIcon: Icon(prefixIcon, color: const Color(0xFF40AA54),),
              suffixIcon: suffixIcon,
              prefix: SizedBox(width: 14.w,),
              enabledBorder: buildOutlineInputBorder(),
              focusedBorder:
              buildOutlineInputBorder(color: focusedBorderColor),
            ),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder buildOutlineInputBorder(
      {Color color = Colors.transparent}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(7.r),
      borderSide: BorderSide(color: color),
    );
  }
}
