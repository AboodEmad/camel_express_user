import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class IsFavoriteItem extends StatelessWidget {
  const IsFavoriteItem({
    Key? key,
    required this.image,
    required this.name,
    required this.rate,
    required this.quantity,
    required this.deliveryFee,
    required this.price,
    required this.onPressed,
  }) : super(key: key);
  final String image;
  final String name;
  final String rate;
  final String quantity;
  final String deliveryFee;
  final String price;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsetsDirectional.only(
          bottom: 26.h,
        ),
        width: double.infinity,
        height: 109.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10.r,
          ),
          color: AppColors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsetsDirectional.only(
                start: 19.w,
              ),
              clipBehavior: Clip.antiAlias,
              width: 75.w,
              height: 78.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  7.r,
                ),
              ),
              child: Image.asset(
                'assets/images/$image.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 8.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: AppTextStyle.headTitleBlack,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    top: 4.h,
                    bottom: 10.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RatingBar.builder(
                        initialRating: 5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemSize: 9,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 1.w),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Color(0xFFFFA407),
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      SizedBox(width: 2.w),
                      Text(
                        rate,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 8.sp,
                          color: AppColors.black,
                        ),
                      ),
                      Text(
                        ' ($quantity)',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 8.sp,
                          color: AppColors.sameGrey,
                        ),
                      ),
                    ],
                  ),
                ),
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
                        fontWeight: FontWeight.w400,
                        fontSize: 8.sp,
                        color: AppColors.sameGrey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'QAR $price',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary,
                  ),
                ),
                SizedBox(height: 16.3.h),
                IconButton(
                  padding: EdgeInsetsDirectional.zero,
                  constraints: const BoxConstraints(),
                  onPressed: onPressed,
                  icon: const Icon(
                    Icons.favorite,
                    color: Color(0xFFFF0000),
                    size: 18,
                  ),
                ),
              ],
            ),
            SizedBox(width: 21.w),
          ],
        ),
      ),
    );
  }
}
