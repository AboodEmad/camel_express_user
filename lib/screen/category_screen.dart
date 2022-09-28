import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:camel_express_user/widget/custom_appbar.dart';
import 'package:camel_express_user/widget/custom_search_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  late TextEditingController _searchTextController;

  @override
  void initState() {
    super.initState();
    _searchTextController = TextEditingController();
  }

  @override
  void dispose() {
    _searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: const CustomAppBar(
        backgroundColor: AppColors.lightGrey,
        notification: '5',
      ),
      body: ListView(
        // physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(
          vertical: 20.h,
          horizontal: 20.w,
        ),
        children: [
          CustomSearchRow(
            hintText: 'Search Category',
            controller: _searchTextController,
            onPressed: () {},
            backgroundColor: const Color(0xFFEBEBEB),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 35.h,
              bottom: 33.h,
            ),
            child: Text(
              'Choose Category',
              style: AppTextStyle.subTitle,
            ),
          ),
          GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 40.h,
                childAspectRatio: 207.h / 151.w,
              ),
              itemBuilder: (context, index) {
                return Center(
                  child: Container(
                    width: 151.w,
                    height: 207.h,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromRGBO(6, 13, 217, 0.05),
                          blurRadius: 8,
                          offset: Offset(0, 5.h),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(
                        20.r,
                      ),
                      color: AppColors.white,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 9.w,
                      vertical: 9.h,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/svg_images/clothes.svg',
                          width: 60.w,
                          height: 76.h,
                        ),
                        SizedBox(height: 25.h,),
                        Text(
                          'Clothes',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
