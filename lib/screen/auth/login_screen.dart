import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:camel_express_user/widget/text_button/app_text_button.dart';
import 'package:camel_express_user/widget/text_field/column_app_text_field.dart';
import 'package:camel_express_user/widget/logo/image_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailOrPhoneTextController;
  late TextEditingController _passwordTextController;
  bool _passwordObscure = true;

  @override
  void initState() {
    super.initState();
    _emailOrPhoneTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    _emailOrPhoneTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        children: [
          const ImageLogo(),
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 30.h,
              bottom: 15.h,
            ),
            child: Center(
              child: Text(
                'Welcome Back!',
                style: AppTextStyle.bigTitle,
              ),
            ),
          ),
          Center(
            child: Text(
              'Sign In',
              style: AppTextStyle.title,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 23.h,
              bottom: 14.h,
            ),
            child: Center(
              child: ColumnAppTextField(
                title: 'Email Address Or Phone Number',
                keyboardType: TextInputType.text,
                controller: _emailOrPhoneTextController,
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                ColumnAppTextField(
                  title: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                  controller: _passwordTextController,
                  suffixIcon: IconButton(
                    padding: EdgeInsetsDirectional.zero,
                    onPressed: () {
                      setState(() => _passwordObscure = !_passwordObscure);
                    },
                    icon: Icon(
                      _passwordObscure ? Icons.visibility : Icons.visibility_off,
                      color: AppColors.primary,
                    ),
                  ),
                ),
                SizedBox(height: 7.h,),
                Padding(
                  padding: EdgeInsetsDirectional.only(end: 32.w,),
                  child: Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: TextButton(
                      style: AppTextStyle.textButtonStyle,
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          '/forget_password_screen',
                        );
                      },
                      child: Text(
                        'Forget Password?',
                        style: AppTextStyle.subTitleButton,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
            top: 29.h,
            bottom: 85.h,
          ),
            child: Center(
              child: AppTextButton(
                text: 'Sign In',
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/bottom_nav_screen');
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'I\'m a new user?',
                style: AppTextStyle.subTitleBlack,
              ),
              SizedBox(
                width: 3.w,
              ),
              TextButton(
                style: AppTextStyle.textButtonStyle,
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    '/register_screen',
                  );
                },
                child: Text(
                  'Sign up',
                  style: AppTextStyle.subTitleButton,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
