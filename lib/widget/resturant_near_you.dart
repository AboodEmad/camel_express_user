import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ResturantNearYou extends StatelessWidget {
  const ResturantNearYou({
    Key? key,
    required this.onPressed,
    required this.resturantName,
    required this.image,
    required this.rate,
    required this.deliveryFee,
    required this.duration,
  }) : super(key: key);
  final void Function() onPressed;
  final String resturantName;
  final String image;
  final String rate;
  final String deliveryFee;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 200.h,
      ),
      child: GridView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 21.w,
            childAspectRatio: 200.h / 260.w,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: onPressed,
              child: Column(
                children: [
                  Container(
                    width: 260.w,
                    height: 128.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          7.r,
                        ),
                        topLeft: Radius.circular(
                          7.r,
                        ),
                      ),
                      color: AppColors.lightWhite,
                    ),
                    child: Image.asset(
                      'assets/images/$image.png',
                      // fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 260.w,
                    height: 59.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          12.r,
                        ),
                        bottomRight: Radius.circular(
                          12.r,
                        ),
                      ),
                      color: AppColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromRGBO(0, 0, 0, 0.38),
                          blurRadius: 6,
                          offset: Offset(0, 6.h),
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                    ),
                    padding: EdgeInsetsDirectional.only(
                      top: 5.h,
                      start: 9.w,
                      end: 20.w,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              resturantName,
                              style: AppTextStyle.headTitleBlack,
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Color(0xFFFFA407),
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 4.1.w,
                                ),
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
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
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
                                  deliveryFee,
                                  style: GoogleFonts.poppins(
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.sameGrey,
                                  ),
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
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 6.8.w,
                                ),
                                Text(
                                  duration,
                                  style: GoogleFonts.poppins(
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.sameGrey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
