import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearchRow extends StatelessWidget {
  const CustomSearchRow({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.backgroundColor,
    required this.onPressed,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final Color backgroundColor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 333.w,
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
        ),
        SizedBox(
          width: 6.w,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: 49.w,
            height: 50.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                7.r,
              ),
              color: AppColors.primary,
            ),
            child: const Icon(
              Icons.filter_list_outlined,
              color: AppColors.white,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}
