import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationNumberRow extends StatelessWidget {
  Color backgroundColor = AppColors.lightWhite;
  late List<TextEditingController> controllers;

  VerificationNumberRow({Key? key, required this.controllers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          VerificationNumberItem(
            firstItem: true,
            backgroundColor: backgroundColor,
            controller: controllers[0],
          ),
          SizedBox(
            width: 26.w,
          ),
          VerificationNumberItem(
            backgroundColor: backgroundColor,
            controller: controllers[1],
          ),
          SizedBox(
            width: 26.w,
          ),
          VerificationNumberItem(
            backgroundColor: backgroundColor,
            controller: controllers[2],
          ),
          SizedBox(
            width: 26.w,
          ),
          VerificationNumberItem(
            lastItem: true,
            backgroundColor: backgroundColor,
            controller: controllers[3],
          ),
        ],
      ),
    );
  }
}

class VerificationNumberItem extends StatelessWidget {
  Color backgroundColor;

  bool firstItem, lastItem;
  late TextEditingController controller;

  VerificationNumberItem({
    Key? key,
    this.firstItem = false,
    this.lastItem = false,
    required this.backgroundColor,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      height: 34.h,
      width: 34.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.grey,
            offset: Offset(0.w, 5.h),
            blurRadius: 4,
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        onChanged: (value) {
          if (value.isNotEmpty && !lastItem) {
            FocusScope.of(context).nextFocus();
          } else if (value.isEmpty && !firstItem) {
            FocusScope.of(context).previousFocus();
          }
        },
        textAlign: TextAlign.center,
        style: AppTextStyle.headTitleBlack,
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
        keyboardType: const TextInputType.numberWithOptions(
            signed: false, decimal: false),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}
