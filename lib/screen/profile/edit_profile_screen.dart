import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/widget/text_button/app_text_button.dart';
import 'package:camel_express_user/widget/text_field/app_text_field.dart';
import 'package:camel_express_user/widget/text_field/column_app_text_field.dart';
import 'package:camel_express_user/widget/appbar/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late TextEditingController _nameTextController;
  late TextEditingController _emailTextController;
  late TextEditingController _phoneTextController;

  @override
  void initState() {
    super.initState();
    _nameTextController = TextEditingController();
    _emailTextController = TextEditingController();
    _phoneTextController = TextEditingController();
  }

  @override
  void dispose() {
    _nameTextController.dispose();
    _emailTextController.dispose();
    _phoneTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBar(
        title: Text('Edit Profile'),
        notification: '5',
        backgroundColor: AppColors.white,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 20.h,
              bottom: 24.h,
            ),
            child: ColumnAppTextField(
              title: 'Name',
              keyboardType: TextInputType.visiblePassword,
              controller: _nameTextController,
              height: 42,
              shadowColor: Colors.transparent,
            ),
          ),
          ColumnAppTextField(
            title: 'Email',
            keyboardType: TextInputType.visiblePassword,
            controller: _emailTextController,
            height: 42,
            shadowColor: Colors.transparent,
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 24.h,
              bottom: 7.h,
            ),
            child: Text(
              'Phone Number',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: AppColors.grey,
              ),
            ),
          ),
          Row(
            children: [
              AppTextField(
                hintColor: AppColors.black,
                hint: '+974',
                keyboardType: TextInputType.phone,
                controller: _phoneTextController,
                width: 99,
                height: 42,
              ),
              SizedBox(
                width: 13.w,
              ),
              AppTextField(
                keyboardType: TextInputType.phone,
                controller: _phoneTextController,
                width: 250,
                height: 42,
              ),
            ],
          ),
          SizedBox(height: 72.h,),
          Center(
            child: AppTextButton(
              width: 356,
              text: 'Done',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
