import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:camel_express_user/widget/appbar/custom_appbar.dart';
import 'package:camel_express_user/widget/cart_item.dart';
import 'package:camel_express_user/widget/dash_line.dart';
import 'package:camel_express_user/widget/text_button/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenColor,
      appBar: CustomAppBar(
        title: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              width: 158.w,
              height: 66.h,
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'My Cart',
              style: GoogleFonts.poppins(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.black,
              ),
            ),
          ],
        ),
        notification: '5',
        backgroundColor: AppColors.screenColor,
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          ListView.builder(
            itemCount: 10,
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 28.h,
            ),
            itemBuilder: (context, index) {
              return Slidable(
                key: const ValueKey(0),
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  dismissible: DismissiblePane(onDismissed: () {}),
                  children: [
                    SlidableAction(
                      onPressed: (context) => () {},
                      backgroundColor: const Color.fromRGBO(154, 194, 37, 0.17),
                      foregroundColor: AppColors.primary,
                      icon: Icons.delete,
                      borderRadius: BorderRadius.circular(7.r),
                      flex: 2,
                    ),
                    SlidableAction(
                      onPressed: (context) => () {},
                      backgroundColor: const Color.fromRGBO(154, 194, 37, 0.17),
                      foregroundColor: AppColors.primary,
                      // borderRadius: BorderRadius.circular(7.r),
                      flex: 4,
                      label: '',
                    ),
                  ],
                ),
                child: CartItem(
                  image: 'steak',
                  name: 'Steak Beef',
                  star: 5,
                  rate: 5.0,
                  numberRates: '+100',
                  quantity: 1,
                  deliveryFee: '5',
                  price: 30.00,
                  onMinusPressed: () {},
                  onAddPressed: () {},
                ),
              );
            },
          ),
          Container(
            width: 428.w,
            height: 260.h,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(154, 194, 37, 0.35),
                  blurRadius: 70,
                  offset: Offset(0, -4),
                ),
              ],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r),
              ),
              color: AppColors.white,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                start: 40.w,
                end: 50.w,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: 25.h,
                      bottom: 28.h,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Shipping Cost',
                          style: GoogleFonts.poppins(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'QAR 30.00',
                          style: AppTextStyle.subTitleBlack,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Sub total',
                        style: GoogleFonts.poppins(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'QAR 30.00',
                        style: AppTextStyle.subTitleBlack,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: 27.h,
                      bottom: 9.h,
                    ),
                    child: const DashLine(),
                  ),
                  Row(
                    children: [
                      Text(
                        'Total',
                        style: GoogleFonts.poppins(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primary,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'QAR 60.00',
                        style: AppTextStyle.subTitleBlack,
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  AppTextButton(
                    text: 'Checkout',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
