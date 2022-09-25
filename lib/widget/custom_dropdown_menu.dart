import 'package:camel_express_user/helpers/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../helpers/app_colors.dart';

class ColumnDropdownMenu extends StatefulWidget {
  ColumnDropdownMenu({
    Key? key,
    required this.title,
    required this.itemsTitle,
    required this.valueTitle,
    // required this.onChanged,
  }) : super(key: key);

  final String title;
  final List itemsTitle;
  late int? valueTitle;
  // final void Function(int?) onChanged;

  @override
  State<ColumnDropdownMenu> createState() => _ColumnDropdownMenuState();
}

class _ColumnDropdownMenuState extends State<ColumnDropdownMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: AppTextStyle.subTitle,
        ),
        SizedBox(
          height: 7.h,
        ),
        Container(
          height: 50.h,
          width: 324.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.r),
            color: AppColors.lightWhite,
            boxShadow: [
              BoxShadow(
                color: const Color.fromRGBO(0, 0, 0, 0.16),
                blurRadius: 6,
                offset: Offset(0, 3.h),
              ),
            ],
          ),
          child: DropdownButton<int>(
            isExpanded: true,
            underline: const SizedBox(),
            onChanged: (int? value) {
                  setState(() => widget.valueTitle = value!);
                },
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(7.r),
              topLeft: Radius.circular(7.r),
            ),
            onTap: () {},
            dropdownColor: AppColors.white,
            elevation: 1,
            icon: Padding(
              padding: EdgeInsetsDirectional.only(
                end: 20.w,
              ),
              child: const Icon(
                Icons.arrow_drop_down_outlined,
                color: AppColors.primary,
                size: 35,
              ),
            ),
            value: widget.valueTitle,
            items: widget.itemsTitle.map(
              (item) {
                return DropdownMenuItem<int>(
                  value: item.id,
                  child: Text(
                    item.title,
                    style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xFF16162E),
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
