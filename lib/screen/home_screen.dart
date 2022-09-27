import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:camel_express_user/widget/custom_appbar.dart';
import 'package:camel_express_user/widget/custom_search_row.dart';
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
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(
        notification: '5',
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        children: [
          CustomSearchRow(
            controller: _searchTextController,
            onPressed: () {},
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 23.h,
              bottom: 20.h,
            ),
            child: Row(
              children: [
                Text(
                  'Popular Stores',
                  style: AppTextStyle.subTitle,
                ),
                Spacer(),
                TextButton(
                  style: AppTextStyle.textButtonStyle,
                  onPressed: () {},
                  child: Text(
                    'view all',
                    style: AppTextStyle.titleButton,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
