import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/widget/app_text_button.dart';
import 'package:camel_express_user/widget/column_app_text_field.dart';
import 'package:camel_express_user/widget/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  late TextEditingController _currentPasswordTextController;
  late TextEditingController _newPasswordTextController;
  late TextEditingController _confirmPasswordTextController;

  @override
  void initState() {
    super.initState();
    _currentPasswordTextController = TextEditingController();
    _newPasswordTextController = TextEditingController();
    _confirmPasswordTextController = TextEditingController();
  }

  @override
  void dispose() {
    _currentPasswordTextController.dispose();
    _newPasswordTextController.dispose();
    _confirmPasswordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(
        title: Text(
          'Change Password',
        ),
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
              title: 'Current Password',
              keyboardType: TextInputType.visiblePassword,
              controller: _currentPasswordTextController,
              height: 42,
              shadowColor: Colors.transparent,
            ),
          ),
          ColumnAppTextField(
            title: 'New Password',
            keyboardType: TextInputType.visiblePassword,
            controller: _newPasswordTextController,
            height: 42,
            shadowColor: Colors.transparent,
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 24.h,
              bottom: 72.h,
            ),
            child: ColumnAppTextField(
              title: 'Confirm Password',
              keyboardType: TextInputType.visiblePassword,
              controller: _confirmPasswordTextController,
              height: 42,
              shadowColor: Colors.transparent,
            ),
          ),
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
