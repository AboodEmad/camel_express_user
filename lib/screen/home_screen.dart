import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:camel_express_user/widget/custom_appbar.dart';
import 'package:camel_express_user/widget/custom_search_row.dart';
import 'package:camel_express_user/widget/resturant_near_you.dart';
import 'package:camel_express_user/widget/title_and_view_all.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _searchTextController;
  late PageController _pageViewController;

  @override
  void initState() {
    super.initState();
    _searchTextController = TextEditingController();
    _pageViewController = PageController(initialPage: 1);
  }

  @override
  void dispose() {
    _searchTextController.dispose();
    _pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(
        backgroundColor: AppColors.white,
        notification: '5',
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        children: [
          CustomSearchRow(
            hintText: 'Search',
            controller: _searchTextController,
            onPressed: () {},
            backgroundColor: AppColors.lightWhite,
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 23.h,
              bottom: 15.h,
            ),
            child: TitleAndViewAll(
              title: 'Popular Stores',
              onPressed: () {},
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 95.h,
            ),
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 19.w,
                  childAspectRatio: 95.h / 60.w,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        width: 72.w,
                        height: 72.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.lightWhite,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.w,
                          vertical: 9.h,
                        ),
                        child: SvgPicture.asset(
                          'assets/svg_images/Macdonald.svg',
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Text(
                        'Macdonald',
                        style: GoogleFonts.poppins(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  );
                }),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 41.h,
              bottom: 15.h,
            ),
            child: TitleAndViewAll(
              title: 'Category',
              onPressed: () {
                Navigator.pushNamed(context, '/category_screen');
              },
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 107.h,
            ),
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 20.w,
                  childAspectRatio: 107.h / 86.w,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        width: 86.w,
                        height: 77.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            7.r,
                          ),
                          color: AppColors.lightWhite,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.w,
                          vertical: 10.h,
                        ),
                        child: SvgPicture.asset(
                          'assets/svg_images/clothes.svg',
                        ),
                      ),
                      SizedBox(
                        height: 9.h,
                      ),
                      Text(
                        'Clothes',
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.sameGrey,
                        ),
                      ),
                    ],
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 41.h),
            child: sliderImages(),
          ),
          Text(
            'Resturant Near You',
            style: AppTextStyle.subTitle,
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 14.h,
              bottom: 28.h,
            ),
            child: ResturantNearYou(
              onPressed: () {
                Navigator.pushNamed(context, '/all_resturant_screen');
              },
              resturantName: 'Resturant Name',
              image: 'albaik',
              rate: '5.0',
              deliveryFee: '\$QAR Delivery Fee',
              duration: '10-15 min',
            ),
          ),
          TitleAndViewAll(
            title: 'Popular Stars',
            onPressed: () {},
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 15.h,
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 216.h,
              ),
              child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 19.w,
                    childAspectRatio: 216.h / 139.w,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 12.h,
                      ),
                      width: 139.w,
                      height: 216.h,
                      color: AppColors.lightWhite,
                      child: Image.asset(
                        'assets/images/stars.png',
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }

  List<String> advertiseImage = [
    "https://img.freepik.com/free-psd/italian-restaurant-banner-template_23-2148670796.jpg?w=1060",
    'https://img.freepik.com/free-psd/italian-food-banner-template_23-2148912985.jpg?w=1060',
    "https://img.freepik.com/free-psd/colourful-french-macarons-dish-sale_23-2148554330.jpg?w=1060",
    "https://img.freepik.com/free-psd/candy-shop-banner-template_23-2149012898.jpg?size=626&ext=jpg&uid=R41744651&ga=GA1.1.1602585870.1639168099"
  ];

  int count = 0;
  final CarouselController _carouselController = CarouselController();

  Widget sliderImages() {
    return SizedBox(
        width: double.infinity,
        height: 290.h,
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    count = index;
                  });
                },
                aspectRatio: 2,
                viewportFraction: 1,
                height: 250.h,
                pageSnapping: true,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                enlargeStrategy: CenterPageEnlargeStrategy.scale,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.decelerate,
                enlargeCenterPage: true,
              ),
              items: advertiseImage
                  .map(
                    (item) => Container(
                      height: 250.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            7.r,
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(item),
                          )),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: advertiseImage.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _carouselController.animateToPage(entry.key),
                  child: Container(
                    width: count != entry.key ? 8.0 : 12,
                    height: count != entry.key ? 8.0 : 12,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.blueGrey.shade50
                                : AppColors.primary)
                            .withOpacity(count == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            )
          ],
        ));
  }
}
