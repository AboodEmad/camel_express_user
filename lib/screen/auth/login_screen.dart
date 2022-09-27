import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:camel_express_user/widget/app_text_button.dart';
import 'package:camel_express_user/widget/column_app_text_field.dart';
import 'package:camel_express_user/widget/image_logo.dart';
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
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: Column(
          children: [
            const ImageLogo(),
            Padding(
              padding: EdgeInsetsDirectional.only(
                top: 30.h,
                bottom: 15.h,
              ),
              child: Text(
                'Welcome Back!',
                style: AppTextStyle.bigTitle,
              ),
            ),
            Text(
              'Sign In',
              style: AppTextStyle.title,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                top: 23.h,
                bottom: 14.h,
              ),
              child: ColumnAppTextField(
                title: 'Email Address Or Phone Number',
                keyboardType: TextInputType.text,
                controller: _emailOrPhoneTextController,
              ),
            ),
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
            Padding(
              padding: EdgeInsetsDirectional.only(
                top: 7.h,
                bottom: 29.h,
                start: 230.w,
              ),
              child: TextButton(
                style: AppTextStyle.textButtonStyle,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/forget_password_screen',);
                },
                child: Text(
                  'Forget Password?',
                  style: AppTextStyle.subTitleButton,
                ),
              ),
            ),
            AppTextButton(
              text: 'Sign In',
              onPressed: () {},
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'I\'m a new user?',
                  style: AppTextStyle.subTitleBlack,
                ),
                SizedBox(width: 3.w,),
                TextButton(
                  style: AppTextStyle.textButtonStyle,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/register_screen',);
                  },
                  child: Text(
                    'Sign up',
                    style: AppTextStyle.subTitleButton,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
