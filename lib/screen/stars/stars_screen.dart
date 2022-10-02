import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/widget/appbar/custom_appbar.dart';
import 'package:camel_express_user/widget/custom_search_row.dart';
import 'package:camel_express_user/widget/star_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StarsScreen extends StatefulWidget {
  const StarsScreen({Key? key}) : super(key: key);

  @override
  State<StarsScreen> createState() => _StarsScreenState();
}

class _StarsScreenState extends State<StarsScreen> {
  late TextEditingController _searchTextController;

  @override
  void initState() {
    super.initState();
    _searchTextController = TextEditingController();
  }

  @override
  void dispose() {
    _searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: const CustomAppBar(
        title: Text(
          'Stars',
        ),
        backgroundColor: AppColors.lightGrey,
        notification: '5',
      ),
      body: ListView(
        // physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(
          vertical: 20.h,
          horizontal: 20.w,
        ),
        children: [
          CustomSearchRow(
            width: 333,
            hintText: 'Search Star',
            controller: _searchTextController,
            onPressed: () {},
            backgroundColor: const Color(0xFFEBEBEB),
          ),
          SizedBox(
            height: 20.h,
          ),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 35.h,
              childAspectRatio: 185.h / 135.w,
            ),
            itemBuilder: (context, index) {
              return const StarItem(
                image: 'stars',
                name: 'Narine Beauty',
              );
            },
          ),
        ],
      ),
    );
  }
}
