import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:camel_express_user/widget/custom_appbar.dart';
import 'package:camel_express_user/widget/custom_search_row.dart';
import 'package:camel_express_user/widget/resturant_near_you.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class VendorScreen extends StatefulWidget {
  const VendorScreen({Key? key}) : super(key: key);

  @override
  State<VendorScreen> createState() => _VendorScreenState();
}

class _VendorScreenState extends State<VendorScreen>
    with SingleTickerProviderStateMixin {
  late TextEditingController _searchTextController;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _searchTextController = TextEditingController();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _searchTextController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F6FD),
      appBar: CustomAppBar(
        title: SizedBox(
          width: 170.w,
          height: 70.h,
          child: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.cover,
          ),
        ),
        backgroundColor: Color(0xFFF7F6FD),
        notification: '5',
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: 20.h,
          horizontal: 20.w,
        ),
        children: [
          CustomSearchRow(
            width: 333,
            hintText: 'Search',
            controller: _searchTextController,
            onPressed: () {},
            backgroundColor: const Color(0xFFEBEBEB),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 22.h,
            ),
            child: TabBar(
              onTap: (int index) {
                setState(() {
                  _tabController.index = index;
                });
              },
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  15.r,
                ),
                color: AppColors.primary,
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: AppColors.white,
              unselectedLabelColor: AppColors.black,
              labelStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
                color: AppColors.black,
              ),
              indicatorWeight: 0.5,
              controller: _tabController,
              tabs: [
                Tab(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg_images/offer.svg',
                        width: 25.w,
                        height: 24.h,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const Text(
                        'Offer',
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg_images/free_delivery.svg',
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const Text(
                        'Free Delivery',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Resturant Near You',
            style: AppTextStyle.subTitle,
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 14.h,
              bottom: 31.h,
            ),
            child: ResturantNearYou(
              onPressed: () {},
              resturantName: 'Resturant Name',
              image: 'albaik',
              rate: '5.0',
              deliveryFee: '\$QAR Delivery Fee',
              duration: '10-15 min',
            ),
          ),
          Text(
            'All Resturant ',
            style: AppTextStyle.subTitle,
          ),
          SizedBox(
            height: 24.h,
          ),
          ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/vendor_details_screen');
                },
                child: Container(
                  margin: EdgeInsetsDirectional.only(
                    bottom: 20.h,
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
                          start: 18.w,
                        ),
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
                          child: SvgPicture.asset(
                            'assets/svg_images/Macdonald.svg',
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
                            'Macdonald',
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
                                      'QAR 5 Delivery Fee',
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
                                      '10-15 min',
                                      style: AppTextStyle.textSmall,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.phone_outlined,
                                color: AppColors.primary,
                                size: 13,
                              ),
                              Text(
                                '+97433099975',
                                style: AppTextStyle.textSmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 40.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RatingBar.builder(
                                initialRating: 5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemSize: 9,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 1.w),
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
                                '5.0',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 7.sp,
                                  color: AppColors.black,
                                ),
                              ),
                              Text(
                                ' (+100)',
                                style: AppTextStyle.textSmall,
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                              top: 10.4.h,
                              bottom: 7.7.h,
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
                                  'Qatar , Doha',
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
                                'nn5613470@gmail.com',
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
            },
          ),
        ],
      ),
    );
  }
}
