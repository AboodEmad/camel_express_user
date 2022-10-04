import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/widget/search/custom_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchRow extends StatelessWidget {
  const CustomSearchRow({
    Key? key,
    required this.hintText,
    required this.backgroundColor,
    required this.onPressed,
    required this.width,
  }) : super(key: key);
  final String hintText;
  final Color backgroundColor;
  final double width;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomSearch(width: width, backgroundColor: backgroundColor, hintText: hintText),
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
