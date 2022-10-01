import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:camel_express_user/widget/custom_appbar.dart';
import 'package:camel_express_user/widget/custom_search_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class VendorDetailsScreen extends StatefulWidget {
  const VendorDetailsScreen({Key? key}) : super(key: key);

  @override
  State<VendorDetailsScreen> createState() => _VendorDetailsScreenState();
}

class _VendorDetailsScreenState extends State<VendorDetailsScreen>
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
        title: Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.cover,
        ),
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
                              color: const Color.fromRGBO(0, 0, 0, 0.16),
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
              const Spacer(),
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
                              color: const Color.fromRGBO(0, 0, 0, 0.16),
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
              bottom: 12.h,
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
              maxHeight: 213.h,
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
                  height: 213.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 9.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.topEnd,
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
                            Positioned(
                              top: 15.h,
                              right: 8.w,
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
                              SizedBox(width: 2.w),
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
                            SizedBox(width: 4.6.w),
                            Text(
                              'Qatar , Doha',
                              style: GoogleFonts.poppins(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.sameGrey,
                              ),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 20.w,
                                height: 20.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                  color: AppColors.primary,
                                ),
                                child: const Icon(
                                  Icons.arrow_forward,
                                  color: AppColors.white,
                                  size: 15,
                                ),
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
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 29.h,
              bottom: 12.h,
            ),
            child: Text(
              'Most Popular',
              style: GoogleFonts.poppins(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 200.h,
            ),
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 18.w,
                childAspectRatio: 200.h / 260.w,
              ),
              itemBuilder: (context, index) {
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
                                'assets/images/taco.png',
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
                                'Chicken Tacos (Taco)',
                                style: AppTextStyle.headTitleBlack,
                              ),
                              const Spacer(),
                              Text(
                                '\$50.00',
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
                                    'QAR 5 Delivery Fee',
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
                                    '10-15 min',
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
                                    '5.0',
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
              },
            ),
          ),
          SizedBox(height: 36.h),
          ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
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
                          'assets/images/steak.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Steak Beef',
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
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 1.w),
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Color(0xFFFFA407),
                                  ),
                                  onRatingUpdate: (rating) {},
                                ),
                                SizedBox(width: 2.w),
                                Text(
                                  '5.0',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 8.sp,
                                    color: AppColors.black,
                                  ),
                                ),
                                Text(
                                  ' (+100)',
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
                                'QAR 5 Delivery Fee',
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
                            'QAR 30.00',
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primary,
                            ),
                          ),
                          SizedBox(height: 16.3.h),
                          const Icon(
                            Icons.favorite,
                            color: Color(0xFFFF0000),
                            size: 18,
                          ),
                        ],
                      ),
                      SizedBox(width: 21.w),
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
