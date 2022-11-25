import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

final searchController = TextEditingController();

Container searchbox() {
  return Container(
    height: 44.h,
    child: TextField(
      maxLines: 1,
      controller: searchController,
      style: const TextStyle(fontSize: 17),
      textAlignVertical: TextAlignVertical.center,
      textInputAction: TextInputAction.search,
      onSubmitted: (value) => () {},
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              // borderSide: BorderSide(width: 1),
              borderSide: BorderSide(color: AppColors.borderColor, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          errorBorder: OutlineInputBorder(
              // borderSide: BorderSide(width: 1),
              borderSide: BorderSide(color: AppColors.borderColor, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          focusedBorder: const OutlineInputBorder(
              // borderSide: BorderSide(width: 1),
              borderSide: BorderSide(color: AppColors.borderColor, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.borderColor, width: 1),
              // borderSide: BorderSide(width: 1),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          // filled: true,
          prefixIcon: Icon(
            Icons.search_rounded,
            color: Color(0xff4E4E52),
            size: 14,
          ),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.borderColor, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          fillColor: Colors.white,
          contentPadding: EdgeInsets.zero,
          hintText: 'Search for pooja',
          hintStyle: TextStyle(fontSize: 14.sp, color: AppColors.textColor)),
    ),
  );
}
