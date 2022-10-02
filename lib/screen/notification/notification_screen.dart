import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/widget/appbar/custom_appbar.dart';
import 'package:camel_express_user/widget/notification_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: const CustomAppBar(
        title: Text(
          'Notification',
        ),
        notification: '5',
        backgroundColor: AppColors.lightGrey,
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: double.infinity.w,
        ),
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          itemCount: 10,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return const NotificationItem(
              image: 'user',
              name: 'User Name',
              title: 'Dear user, you can take advantage of the',
              subTitle: 'discount code',
              code: 'NN11',
              time: '30 minutes ago',
              date: '21 oct',
            );
          },
        ),
      ),
    );
  }
}
