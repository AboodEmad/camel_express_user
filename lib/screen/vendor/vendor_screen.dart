import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:camel_express_user/widget/appbar/custom_appbar.dart';
import 'package:camel_express_user/widget/search/custom_search_row.dart';
import 'package:camel_express_user/widget/vendor/vendor_item.dart';
import 'package:camel_express_user/widget/vendor/vendor_near_you.dart';
import 'package:flutter/material.dart';
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
      backgroundColor: AppColors.screenColor,
      appBar: CustomAppBar(
        title: SizedBox(
          width: 170.w,
          height: 70.h,
          child: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.cover,
          ),
        ),
        backgroundColor: AppColors.screenColor,
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
            child: VendorNearYou(
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
              return const VendorItem(
                image: 'vendor',
                name: 'Macdonald',
                deliveryFee: 5,
                time: '10-15 min',
                phone: '+97433099975',
                star: 5,
                rate: 5.0,
                numberRates: '+100',
                location: 'Qatar , Doha',
                email: 'nn5613470@gmail.com',
              );
            },
          ),
        ],
      ),
    );
  }
}
