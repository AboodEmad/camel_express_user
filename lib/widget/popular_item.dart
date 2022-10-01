import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({
    Key? key,
    required this.image,
    required this.name,
    required this.deliveryFee,
    required this.time,
    required this.price,
    required this.rate,
  }) : super(key: key);
  final String image;
  final String name;
  final String deliveryFee;
  final String time;
  final String price;
  final String rate;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 260.w,
        height: 200.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColors.white,
        ),
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(
                    top: 11.h,
                    bottom: 5.h,
                    start: 9.w,
                    end: 9.w,
                  ),
                  clipBehavior: Clip.antiAlias,
                  width: 243.w,
                  height: 130.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Image.asset(
                    'assets/images/$image.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 19.h,
                  right: 20.w,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: AlignmentDirectional.center,
                      width: 30.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.white,
                          width: 3.w,
                        ),
                      ),
                      child: const Icon(
                        Icons.favorite_outline,
                        color: AppColors.primary,
                        size: 17,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 13.w,
              ),
              child: Row(
                children: [
                  Text(
                    name,
                    style: AppTextStyle.headTitleBlack,
                  ),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: GoogleFonts.poppins(
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 7.h),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 13.w,
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg_images/delivery.svg',
                        width: 16.w,
                        height: 14.h,
                      ),
                      SizedBox(width: 6.8.w),
                      Text(
                        'QAR $deliveryFee Delivery Fee',
                        style: GoogleFonts.poppins(
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.sameGrey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 6.w),
                  Row(
                    children: [
                      const Icon(
                        Icons.access_time,
                        color: AppColors.primary,
                        size: 14,
                      ),
                      SizedBox(width: 6.8.w),
                      Text(
                        time,
                        style: GoogleFonts.poppins(
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.sameGrey,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color(0xFFFFA407),
                        size: 12,
                      ),
                      SizedBox(width: 4.1.w),
                      Text(
                        rate,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 9.sp,
                            color: AppColors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
