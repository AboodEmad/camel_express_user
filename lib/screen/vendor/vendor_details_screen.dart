import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/widget/appbar/custom_appbar.dart';
import 'package:camel_express_user/widget/search/custom_search.dart';
import 'package:camel_express_user/widget/is_favorite_item.dart';
import 'package:camel_express_user/widget/menu_item.dart';
import 'package:camel_express_user/widget/popular_item.dart';
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
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: CustomAppBar(
        title: SizedBox(
          width: 170.w,
          height: 70.h,
          child: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.cover,
          ),
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
            child: const CustomSearch(
              width: double.infinity,
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
                return const CustomMenuItem(
                  image: 'pizza',
                  name: 'Pizza',
                  star: 5,
                  rate: 5.0,
                  quantity: '+100',
                  location: 'Qatar , Doha',
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
                return const PopularItem(
                  image: 'taco',
                  name: 'Chicken Tacos (Taco)',
                  deliveryFee: '5',
                  time: '10-15 min',
                  price: '50.00',
                  rate: '5.0',
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
              return IsFavoriteItem(
                image: 'steak',
                name: 'Steak Beef',
                starNumber: 5,
                rate: 5.0,
                deliveryFee: '5',
                quantity: '+100',
                price: '30.00',
                onPressed: () {
                  Navigator.pushNamed(context, '/product_details_screen');
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

