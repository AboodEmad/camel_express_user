import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:camel_express_user/widget/custom_appbar.dart';
import 'package:camel_express_user/widget/custom_search_row.dart';
import 'package:camel_express_user/widget/image_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ResturantDetailsScreen extends StatefulWidget {
  const ResturantDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ResturantDetailsScreen> createState() => _ResturantDetailsScreenState();
}

class _ResturantDetailsScreenState extends State<ResturantDetailsScreen>
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
      backgroundColor: AppColors.lightGrey,
      appBar: CustomAppBar(
        notification: '5',
        backgroundColor: AppColors.lightGrey,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 55.w,
                height: 54.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    7.r,
                  ),
                  color: AppColors.lightWhite,
                ),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: AppColors.lightWhite,
                    radius: 19.r,
                    child: SvgPicture.asset(
                      'assets/svg_images/Macdonald.svg',
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 8.w,
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
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 18.w,
                        height: 18.h,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.16),
                              offset: Offset(0, 3.h),
                              blurRadius: 6,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(
                            2.r,
                          ),
                          color: AppColors.white,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/svg_images/phone.svg',
                            width: 12.w,
                            height: 12.h,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        '+97433099975',
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
              Spacer(),
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
                        '5.0',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 9.sp,
                          color: AppColors.black,
                        ),
                      ),
                      Text(
                        ' (+100)',
                        style: GoogleFonts.poppins(
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.sameGrey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 18.w,
                        height: 18.h,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.16),
                              offset: Offset(0, 3.h),
                              blurRadius: 6,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(
                            2.r,
                          ),
                          color: AppColors.white,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/svg_images/Location.svg',
                            width: 10.w,
                            height: 12.h,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        'Qatar , Doha',
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
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 29.h,
              bottom: 22.h,
            ),
            child: CustomSearch(
              width: double.infinity,
              controller: _searchTextController,
              hintText: 'Search',
              backgroundColor: AppColors.lightWhite,
            ),
          ),
          TabBar(
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
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 36.h,
              bottom: 10.h,
            ),
            child: Text(
              'Menu',
              style: GoogleFonts.poppins(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 212.h,
            ),
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 25.w,
                childAspectRatio: 212.h / 135.w,
              ),
              itemBuilder: (context, index) {
                return Container(
                  width: 135.w,
                  height: 212.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 9.w,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 9.h,
                          ),
                          clipBehavior: Clip.antiAlias,
                          width: 117.w,
                          height: 112.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Image.asset(
                            'assets/images/pizza.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'Pizza',
                          style: AppTextStyle.headTitleBlack,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.only(
                            top: 6.h,
                            bottom: 11.h,
                          ),
                          child: Row(
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
                                  fontSize: 9.sp,
                                  color: AppColors.black,
                                ),
                              ),
                              Text(
                                ' (+100)',
                                style: GoogleFonts.poppins(
                                  fontSize: 9.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.sameGrey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/svg_images/Location.svg',
                              width: 9.w,
                              height: 15.h,
                            ),
                            SizedBox(
                              width: 4.6.w,
                            ),
                            Text(
                              'Qatar , Doha',
                              style: GoogleFonts.poppins(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.sameGrey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
