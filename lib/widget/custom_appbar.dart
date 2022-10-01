import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../helpers/app_colors.dart';
import '../helpers/text_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    required this.notification,
    required this.backgroundColor,
  }) : super(key: key);
  final Widget title;
  final String notification;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 110.h,
      backgroundColor: backgroundColor,
      title: SizedBox(
        width: 170.w,
        height: 70.h,
        child: title,
      ),
      actions: [
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: const Icon(
            Icons.favorite_outline,
          ),
        ),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              SizedBox(
                height: 32.h,
                child: SvgPicture.asset(
                  'assets/svg_images/notification.svg',
                  width: 22.5.w,
                  height: 26.h,
                ),
              ),
              CircleAvatar(
                backgroundColor: const Color(0xFFFF3636),
                radius: 6.r,
                child: Text(
                  textAlign: TextAlign.center,
                  notification,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 7.sp,
                    color: AppColors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
        110.h,
      );
}
