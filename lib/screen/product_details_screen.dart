import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:camel_express_user/model/dropdown_menu.dart';
import 'package:camel_express_user/widget/appbar/custom_appbar.dart';
import 'package:camel_express_user/widget/dropdown_menu/custom_dropdown_menu.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  List<String> imgList = [
    "https://img.freepik.com/free-psd/italian-restaurant-banner-template_23-2148670796.jpg?w=1060",
    'https://img.freepik.com/free-psd/italian-food-banner-template_23-2148912985.jpg?w=1060',
    "https://img.freepik.com/free-psd/colourful-french-macarons-dish-sale_23-2148554330.jpg?w=1060",
    "https://img.freepik.com/free-psd/candy-shop-banner-template_23-2149012898.jpg?size=626&ext=jpg&uid=R41744651&ga=GA1.1.1602585870.1639168099"
  ];

  final List<DropdownMenuModel> _size = <DropdownMenuModel>[
    DropdownMenuModel(id: 1, title: 'Small'),
    DropdownMenuModel(id: 2, title: 'Medium'),
    DropdownMenuModel(id: 3, title: 'Big'),
  ];

  int? _selectedSizeId;
  int count = 0;
  final CarouselController _carouselController = CarouselController();

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
        notification: '5',
        backgroundColor: const Color(0xFFF7F6FD),
      ),
      body: ListView(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 420.h,
              maxWidth: double.infinity.w,
            ),
            child: sliderImages(),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: 20.w,
              end: 40.w,
              top: 15.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Taco Salad',
                      style: GoogleFonts.poppins(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'QAR 30.00',
                      style: GoogleFonts.poppins(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    top: 10.h,
                    bottom: 30.h,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg_images/star.svg',
                        width: 24.w,
                        height: 24.h,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        '5.0',
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF737373),
                        ),
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        'assets/svg_images/clock.svg',
                        width: 24.w,
                        height: 24.h,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        '10-20 Min',
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF737373),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Description',
                  style: GoogleFonts.poppins(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
                ),
                SizedBox(
                  height: 23.h,
                ),
                Text(
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor\n do amet sint. Velit officia consequat duis enim velit mollit.',
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.sameGrey,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: AppTextStyle.textButtonStyle,
                  child: Text(
                    ' Read More...',
                    style: AppTextStyle.subTitleButton,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    top: 26.h,
                    bottom: 42.h,
                  ),
                  child: ColumnDropdownMenu(
                    title: 'Size',
                    itemsTitle: _size,
                    valueTitle: _selectedSizeId,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget sliderImages() {
    return Stack(
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
            height: double.infinity,
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
          items: imgList
              .map(
                (item) => Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(item),
                  )),
                ),
              )
              .toList(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _carouselController.animateToPage(entry.key),
                child: Container(
                  width: count != entry.key ? 8.0 : 12,
                  height: count != entry.key ? 8.0 : 12,
                  margin: const EdgeInsets.symmetric(
                      vertical: 22.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.blueGrey.shade50
                              : AppColors.primary)
                          .withOpacity(count == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
