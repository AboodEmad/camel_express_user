import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/helpers/text_style.dart';
import 'package:camel_express_user/widget/appbar/custom_appbar.dart';
import 'package:camel_express_user/widget/favorite_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: const CustomAppBar(
        title: Text('Favorites'),
        notification: '5',
        backgroundColor: AppColors.lightGrey,
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        itemCount: 10,
        itemBuilder: (context, index) {
          return FavoriteItem(
            image: 'steak',
            name: 'Steak Beef',
            star: 5,
            rate: 5.0,
            deliveryFee: '5',
            location: 'Qatar_Doha',
            quantity: '+100',
            price: '30.00',
            onPressed: () {},
          );
        },
      ),
    );
  }
}

