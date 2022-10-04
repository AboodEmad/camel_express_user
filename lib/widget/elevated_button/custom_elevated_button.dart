import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.height = 23,
    this.width = 24,
    this.iconSize = 16,
  }) : super(key: key);
  final IconData icon;
  final void Function() onPressed;
  final double height;
  final double width;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        alignment: AlignmentDirectional.center,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        elevation: MaterialStateProperty.all(0),
        minimumSize:
        MaterialStateProperty.all(Size(width.w, height.h)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
        ),
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        backgroundColor: MaterialStateProperty.all(AppColors.primary),
      ),
      child: Icon(
        icon,
        color: AppColors.white,
        size: iconSize,
      ),
    );
  }
}
