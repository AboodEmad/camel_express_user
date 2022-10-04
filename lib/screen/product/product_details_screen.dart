import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/model/dropdown_menu.dart';
import 'package:camel_express_user/widget/appbar/custom_appbar.dart';
import 'package:camel_express_user/widget/product/custom_product_details.dart';
import 'package:camel_express_user/widget/slider_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  final List<DropdownMenuModel> _size = <DropdownMenuModel>[
    DropdownMenuModel(id: 1, title: 'Small'),
    DropdownMenuModel(id: 2, title: 'Medium'),
    DropdownMenuModel(id: 3, title: 'Big'),
  ];

  int selectedSizeId = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenColor,
      appBar: CustomAppBar(
        title: SizedBox(
          width: 170.w,
          height: 70.h,
          child: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.cover,
          ),
        ),
        notification: '5',
        backgroundColor: AppColors.screenColor,
      ),
      body: ListView(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 420.h,
              maxWidth: double.infinity.w,
            ),
            child: const SliderImages(
              imgList: [
                "https://img.freepik.com/free-psd/italian-restaurant-banner-template_23-2148670796.jpg?w=1060",
                'https://img.freepik.com/free-psd/italian-food-banner-template_23-2148912985.jpg?w=1060',
                "https://img.freepik.com/free-psd/colourful-french-macarons-dish-sale_23-2148554330.jpg?w=1060",
                "https://img.freepik.com/free-psd/candy-shop-banner-template_23-2149012898.jpg?size=626&ext=jpg&uid=R41744651&ga=GA1.1.1602585870.1639168099"
              ],
            ),
          ),
          CustomProductDetails(
            size: _size,
            selectedSizeId: selectedSizeId,
            name: 'Taco Salad',
            price: 30.00,
            rate: 5.0,
            time: '10-20 Min',
            onReadMorePressed: () {},
            onMinusPressed: () {},
            onAddPressed: () {},
            onPressed: () {},
            description: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor\n do amet sint. Velit officia consequat duis enim velit mollit.',
          ),
        ],
      ),
    );
  }
}
