import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class VendorItem extends StatelessWidget {
  const VendorItem({
    Key? key,
    required this.image,
    required this.name,
    required this.deliveryFee,
    required this.time,
    required this.phone,
    required this.star,
    required this.rate,
    required this.numberRates,
    required this.location,
    required this.email,
  }) : super(key: key);
  final String image;
  final String name;
  final double deliveryFee;
  final String time;
  final String phone;
  final double star;
  final double rate;
  final String numberRates;
  final String location;
  final String email;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/vendor_details_screen');
      },
      child: Container(
        margin: EdgeInsetsDirectional.only(
          bottom: 20.h,
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.w,),
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
              width: 70.w,
              height: 67.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  7.r,
                ),
                color: AppColors.lightWhite,
              ),
              child: CircleAvatar(
                backgroundColor: AppColors.lightWhite,
                radius: 24.r,
                child: Image.asset(
                  'assets/images/$image.png',
                ),
              ),
            ),
            SizedBox(
              width: 9.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    top: 4.h,
                    bottom: 6.h,
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
                          SizedBox(
                            width: 6.8.w,
                          ),
                          Text(
                            'QAR $deliveryFee Delivery Fee',
                            style: AppTextStyle.textSmall,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.access_time,
                            color: AppColors.primary,
                            size: 13,
                          ),
                          SizedBox(
                            width: 6.8.w,
                          ),
                          Text(
                            time,
                            style: AppTextStyle.textSmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svg_images/phone.svg',
                      width: 15.w,
                      height: 13.h,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      phone,
                      style: AppTextStyle.textSmall,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 5.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RatingBar.builder(
                      initialRating: star,
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
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      rate.toString(),
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 7.sp,
                        color: AppColors.black,
                      ),
                    ),
                    Text(
                      ' ($numberRates)',
                      style: AppTextStyle.textSmall,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    top: 10.4.h,
                    bottom: 9.h,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg_images/Location.svg',
                        width: 7.w,
                        height: 10.h,
                      ),
                      SizedBox(
                        width: 4.6.w,
                      ),
                      Text(
                        location,
                        style: AppTextStyle.textSmall,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svg_images/gmail.svg',
                      width: 7.w,
                      height: 6.h,
                    ),
                    SizedBox(
                      width: 4.6.w,
                    ),
                    Text(
                      email,
                      style: AppTextStyle.textSmall,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
