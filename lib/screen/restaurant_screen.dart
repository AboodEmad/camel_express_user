import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:camel_express_user/widget/custom_appbar.dart';
import 'package:camel_express_user/widget/custom_search_row.dart';
import 'package:camel_express_user/widget/resturant_near_you.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ResturantScreen extends StatefulWidget {
  const ResturantScreen({Key? key}) : super(key: key);

  @override
  State<ResturantScreen> createState() => _ResturantScreenState();
}

class _ResturantScreenState extends State<ResturantScreen>
    with SingleTickerProviderStateMixin {
  late TextEditingController _searchTextController;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _searchTextController = TextEditingController();
    _tabController = TabController(length: 3, vsync: this);
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
      appBar: const CustomAppBar(
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
                fontSize: 10.sp,
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
                        'assets/svg_images/newly_add.svg',
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const Text(
                        'Newly Add',
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
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                height: 109.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.r,
                  ),
                  color: AppColors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 73.w,
                      height: 65.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          7.r,
                        ),
                        color: AppColors.lightWhite,
                      ),
                      child: Image.asset(
                        'assets/svg_images/Macdonald.svg',
                      ),
                    ),
                    SizedBox(
                      width: 9.w,
                    ),
                    Column(
                      children: [
                        Text(
                          'Macdonald',
                          style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                          ),
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
                                  'QAR 5 Delivery Fee',
                                  style: GoogleFonts.poppins(
                                    fontSize: 8.sp,
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
                                  '10-15 min',
                                  style: GoogleFonts.poppins(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.sameGrey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.phone_outlined,
                              color: AppColors.primary,
                            ),
                            Text(
                              '+97433099975',
                              style: GoogleFonts.poppins(
                                fontSize: 8.sp,
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
              );
            },
          ),
        ],
      ),
    );
  }
}
