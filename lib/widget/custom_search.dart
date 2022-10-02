import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    Key? key,
    required this.controller,
    required this.backgroundColor,
    required this.hintText,
    required this.width,
  }) : super(key: key);

  final TextEditingController controller;
  final Color backgroundColor;
  final String hintText;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 333.w,
      width: width.w,
      height: 50.h,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.text,
        style: GoogleFonts.poppins(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),
        decoration: InputDecoration(
          fillColor: backgroundColor,
          filled: true,
          contentPadding: EdgeInsets.zero,
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(
            fontSize: 14.sp,
            color: AppColors.sameGrey,
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              7.r,
            ),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          hintMaxLines: 1,
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.sameGrey,
          ),
          suffixIcon: const Icon(
            Icons.mic_none_outlined,
            color: AppColors.sameGrey,
          ),
        ),
      ),
    );
  }
}
