import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:camel_express_user/model/dropdown_menu.dart';
import 'package:camel_express_user/widget/custom_elevated_button.dart';
import 'package:camel_express_user/widget/dropdown_menu/custom_dropdown_menu.dart';
import 'package:camel_express_user/widget/text_button/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomProductDetails extends StatelessWidget {
  CustomProductDetails({
    Key? key,
    required List<DropdownMenuModel> size,
    required this.selectedSizeId,
    required this.name,
    required this.price,
    required this.rate,
    required this.time,
    required this.description,
    required this.onReadMorePressed,
    required this.onMinusPressed,
    required this.onAddPressed,
    required this.onPressed,
  }) : _size = size, super(key: key);

  final List<DropdownMenuModel> _size;
  final int selectedSizeId;
  final String name;
  final double price;
  final double rate;
  final String time;
  final String description;
  final void Function() onReadMorePressed;
  final void Function() onMinusPressed;
  final void Function() onAddPressed;
  final void Function() onPressed;
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: 20.w,
        end: 40.w,
        top: 15.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                name,
                style: GoogleFonts.poppins(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
              ),
              const Spacer(),
              Text(
                'QAR $price',
                style: GoogleFonts.poppins(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 10.h,
              bottom: 30.h,
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/star.png',
                  width: 60.w,
                  height: 60.h,
                  fit: BoxFit.cover,
                ),
                Text(
                  rate.toString(),
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF737373),
                  ),
                ),
                const Spacer(),
                Image.asset(
                  'assets/images/clock.png',
                  width: 60.w,
                  height: 60.h,
                  fit: BoxFit.cover,
                ),
                Text(
                  time,
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF737373),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Description',
            style: GoogleFonts.poppins(
              fontSize: 22.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.black,
            ),
          ),
          SizedBox(
            height: 23.h,
          ),
          Text(
            description,
            style: GoogleFonts.poppins(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.sameGrey,
            ),
          ),
          TextButton(
            onPressed: onReadMorePressed,
            style: AppTextStyle.textButtonStyle,
            child: Text(
              ' Read More...',
              style: AppTextStyle.subTitleButton,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 26.h,
              bottom: 50.h,
            ),
            child: ColumnDropdownMenu(
              title: 'Size',
              itemsTitle: _size,
              valueTitle: selectedSizeId,
              height: 39,
              backgroundColor: AppColors.white,
              fontWeight: FontWeight.w500,
              titleColor: AppColors.black,
              sizedBoxHeight: 13,
              shadowColor: Colors.transparent,
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: AppColors.black,
                size: 21,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 8.w,
              ),
              CustomElevatedButton(
                icon: Icons.remove,
                onPressed: onMinusPressed,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.w),
                child: Text(
                  quantity.toString(),
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primary,
                  ),
                ),
              ),
              CustomElevatedButton(
                icon: Icons.add,
                onPressed: onAddPressed,
              ),
              const Spacer(),
              AppTextButton(
                text: 'Add to Cart',
                onPressed: onPressed,
                width: 183,
                height: 39,
              ),
            ],
          ),
          SizedBox(
            height: 60.h,
          ),
        ],
      ),
    );
  }
}
