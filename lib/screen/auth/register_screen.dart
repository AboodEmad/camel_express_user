import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:camel_express_user/model/dropdown_menu.dart';
import 'package:camel_express_user/widget/text_button/app_text_button.dart';
import 'package:camel_express_user/widget/text_field/column_app_text_field.dart';
import 'package:camel_express_user/widget/dropdown_menu/custom_dropdown_menu.dart';
import 'package:camel_express_user/widget/logo/image_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController _nameTextController;
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  late TextEditingController _confirmPasswordTextController;
  late TextEditingController _phoneTextController;
  late TextEditingController _storeTextController;
  late TextEditingController _locationTextController;
  late TextEditingController _descriptionTextController;
  bool _passwordObscure = true;
  bool _passwordConfirmObscure = true;
  int? _selectedCountryId;
  int? _selectedCityId;

  @override
  void initState() {
    super.initState();
    _nameTextController = TextEditingController();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    _confirmPasswordTextController = TextEditingController();
    _phoneTextController = TextEditingController();
    _storeTextController = TextEditingController();
    _locationTextController = TextEditingController();
    _descriptionTextController = TextEditingController();
  }

  @override
  void dispose() {
    _nameTextController.dispose();
    _emailTextController.dispose();
    _passwordTextController.dispose();
    _confirmPasswordTextController.dispose();
    _phoneTextController.dispose();
    _storeTextController.dispose();
    _locationTextController.dispose();
    _descriptionTextController.dispose();
    super.dispose();
  }

  final List<DropdownMenuModel> _country = <DropdownMenuModel>[
    DropdownMenuModel(id: 1, title: 'Qatar'),
    DropdownMenuModel(id: 2, title: 'Qatar'),
    DropdownMenuModel(id: 3, title: 'Qatar'),
  ];

  final List<DropdownMenuModel> _city = <DropdownMenuModel>[
    DropdownMenuModel(id: 1, title: 'Doha'),
    DropdownMenuModel(id: 2, title: 'Doha'),
    DropdownMenuModel(id: 3, title: 'Doha'),
  ];

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
          Center(child: const ImageLogo()),
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
              'Sign Up',
              style: AppTextStyle.title,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 23.h,
              bottom: 15.h,
            ),
            child: Center(
              child: ColumnAppTextField(
                title: 'User Name',
                keyboardType: TextInputType.name,
                controller: _nameTextController,
              ),
            ),
          ),
          Center(
            child: ColumnAppTextField(
              title: 'Email Address',
              keyboardType: TextInputType.emailAddress,
              controller: _emailTextController,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 15.h,
            ),
            child: Center(
              child: ColumnAppTextField(
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
            ),
          ),
          Center(
            child: ColumnAppTextField(
              title: 'Confirm Password',
              keyboardType: TextInputType.visiblePassword,
              controller: _confirmPasswordTextController,
              suffixIcon: IconButton(
                padding: EdgeInsetsDirectional.zero,
                onPressed: () {
                  setState(
                      () => _passwordConfirmObscure = !_passwordConfirmObscure);
                },
                icon: Icon(
                  _passwordConfirmObscure
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: AppColors.primary,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 15.h,
            ),
            child: Center(
              child: ColumnDropdownMenu(
                title: 'Country',
                itemsTitle: _country,
                valueTitle: _selectedCountryId,
              ),
            ),
          ),
          Center(
            child: ColumnDropdownMenu(
              title: 'City',
              itemsTitle: _city,
              valueTitle: _selectedCityId,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 14.h,
              bottom: 39.h,
            ),
            child: Center(
              child: ColumnAppTextField(
                title: 'Phone Number',
                keyboardType: TextInputType.numberWithOptions(
                  decimal: false,
                ),
                controller: _phoneTextController,
              ),
            ),
          ),
          Center(
            child: AppTextButton(
              text: 'Sign Up',
              onPressed: () {},
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              top: 40.h,
              bottom: 20.h,
            ),
            child: Row(
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
          ),
        ],
      ),
    );
  }
}
