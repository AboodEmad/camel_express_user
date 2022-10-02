import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:camel_express_user/widget/appbar/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
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
      backgroundColor: const Color(0xFFF1F3EF),
      appBar: const CustomAppBar(
          title: Text('Profile'),
          notification: '5',
          backgroundColor: AppColors.white),
      body: Column(
        children: [
          Container(
            color: AppColors.white,
            padding: EdgeInsetsDirectional.only(
              start: 20.w,
              bottom: 25.h,
            ),
            child: Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Container(
                      width: 58.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.r),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        'assets/images/profile.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: AlignmentDirectional.center,
                        width: 18.w,
                        height: 18.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.primary,
                            width: 1.w,
                          ),
                        ),
                        child: SvgPicture.asset(
                          'assets/svg_images/edit_image_icon.svg',
                          width: 7.5.w,
                          height: 7.5.h,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 15.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nancy Talal Abo Alkamar',
                      style: AppTextStyle.headTitleBlack,
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Text(
                      '0592373805',
                      style: AppTextStyle.headTitleBlack,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(top: 33.h, bottom: 15.h),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              width: double.infinity.w,
              height: 137.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.white,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.only(start: 17.w),
                child: Column(
                  children: [
                    SizedBox(height: 18.h),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/edit_profile_screen');
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svg_images/edit_icon.svg',
                            width: 15.4.w,
                            height: 17.h,
                          ),
                          SizedBox(width: 30.7.w),
                          Text(
                            'Edit Profile',
                            style: AppTextStyle.listTileTitle,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 18.h),
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/svg_images/payment_icon.svg',
                              width: 15.4.w,
                              height: 12.h,
                            ),
                            SizedBox(width: 30.7.w),
                            Text(
                              'Payment Method',
                              style: AppTextStyle.listTileTitle,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svg_images/Location.svg',
                            color: const Color(0xFF515151),
                            width: 15.4.w,
                            height: 18.8.h,
                          ),
                          SizedBox(width: 30.7.w),
                          Text(
                            'Locations',
                            style: AppTextStyle.listTileTitle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            width: double.infinity.w,
            height: 180.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.white,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: 17.w),
              child: Column(
                children: [
                  SizedBox(height: 18.h),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/svg_images/language_icon.svg',
                          width: 19.8.w,
                          height: 19.8.h,
                        ),
                        SizedBox(width: 30.7.w),
                        Text(
                          'Language',
                          style: AppTextStyle.listTileTitle,
                        ),
                        Spacer(),
                        SizedBox(
                          height: 22.h,
                          width: 100.w,
                          child: TabBar(
                            onTap: (int index) {
                              setState(() {
                                _tabController.index = index;
                              });
                            },
                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                4.r,
                              ),
                              color: AppColors.lightGrey,
                            ),
                            indicatorSize: TabBarIndicatorSize.tab,
                            labelColor: AppColors.white,
                            unselectedLabelColor: AppColors.black,
                            labelStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                              color: AppColors.black,
                            ),
                            indicatorWeight: 0.5,
                            controller: _tabController,
                            tabs: [
                              Tab(
                                child: Text(
                                  'En',
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'عربي',
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 28.w,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 18.h),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svg_images/wallet_icon.svg',
                            width: 15.w,
                            height: 15.h,
                          ),
                          SizedBox(width: 30.7.w),
                          Text(
                            'My Wallet',
                            style: AppTextStyle.listTileTitle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/change_password_screen');
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/svg_images/change_pass_icon.svg',
                          color: const Color(0xFF515151),
                          width: 16.w,
                          height: 16.h,
                        ),
                        SizedBox(width: 30.7.w),
                        Text(
                          'Change Password',
                          style: AppTextStyle.listTileTitle,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg_images/help_icon.svg',
                        color: const Color(0xFF515151),
                        width: 17.w,
                        height: 17.h,
                      ),
                      SizedBox(width: 30.7.w),
                      Text(
                        'help & Support',
                        style: AppTextStyle.listTileTitle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                alignment: AlignmentDirectional.centerStart,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                elevation: MaterialStateProperty.all(0),
                minimumSize:
                    MaterialStateProperty.all(Size(double.infinity.w, 54.h)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    // side: BorderSide(color: Colors.red)
                  ),
                ),
                padding: MaterialStateProperty.all(EdgeInsets.zero),
                backgroundColor: MaterialStateProperty.all(AppColors.white),
              ),
              icon: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.w,
                ),
                child: CircleAvatar(
                  radius: 15.5.r,
                  backgroundColor: const Color(0xFFFF0000),
                  child: const RotatedBox(
                    quarterTurns: 2,
                    child: Icon(
                      Icons.logout,
                      color: AppColors.white,
                      size: 17,
                    ),
                  ),
                ),
              ),
              label: Text(
                'logout',
                style: AppTextStyle.listTileTitle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
