import 'package:camel_express_user/helpers/app_colors.dart';
import 'package:camel_express_user/widget/custom_appbar.dart';
import 'package:flutter/material.dart';

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
      appBar: CustomAppBar(
        title: Text('Notification',),
        notification: '5',
        backgroundColor: AppColors.lightGrey,
      ),
    );
  }
}
