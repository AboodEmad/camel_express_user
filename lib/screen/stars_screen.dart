import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:camel_express_user/widget/custom_appbar.dart';
import 'package:camel_express_user/widget/custom_search_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class StarsScreen extends StatefulWidget {
  const StarsScreen({Key? key}) : super(key: key);

  @override
  State<StarsScreen> createState() => _StarsScreenState();
}

class _StarsScreenState extends State<StarsScreen> {
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
        title: Text(
          'Stars',
        ),
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
            width: 333,
            hintText: 'Search Star',
            controller: _searchTextController,
            onPressed: () {},
            backgroundColor: const Color(0xFFEBEBEB),
          ),
          SizedBox(
            height: 20.h,
          ),
          GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 35.h,
                childAspectRatio: 185.h / 135.w,
              ),
              itemBuilder: (context, index) {
                return Center(
                  child: Container(
                    width: 135.w,
                    height: 212.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.r,
                      ),
                      color: AppColors.white,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 9.w,
                      vertical: 11.h,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5.h),
                          width: 118.w,
                          height: 158.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: AppColors.lightWhite,
                          ),
                          child: Image.asset(
                            'assets/images/stars.png',
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Narine Beauty',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
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
