import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageLogo extends StatelessWidget {
  const ImageLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        top: 118.h,
      ),
      child: SizedBox(
          width: 393.w,
          height: 165.h,
          child: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.cover,
          )),
    );
  }
}
