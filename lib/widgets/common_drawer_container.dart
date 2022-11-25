import 'package:digitalastro/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import 'common_app_bar.dart';

Container commondrawerContainer(icon, text) {
  icon;
  text;
  return Container(
      height: 50.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          border: Border.all(
              width: 1,
              color: Color.fromRGBO(224, 224, 224, 1).withOpacity(0.6))),
      child: Row(
        children: [
          addWidth(18.w),
          Icon(
            icon,
            size: 18,
            color: AppColors.appPrimaryColor,
          ),
          addWidth(24.w),
          Text(
            text,
            style: GoogleFonts.poppins(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff111115)),
          ),
          Spacer(),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios,
                size: 16, color: Color.fromRGBO(73, 79, 89, 1)),
            onPressed: () {},
          ),
        ],
      ));
}

Container commondrawerContainerMyAccount(icon, text) {
  icon;
  text;
  return Container(
      height: 60.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          border: Border.all(
              width: 1,
              color: Color.fromRGBO(224, 224, 224, 1).withOpacity(0.6))),
      child: Row(
        children: [
          addWidth(18.w),
          Icon(
            icon,
            size: 18,
            color: AppColors.black,
          ),
          addWidth(24.w),
          Text(
            text,
            style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff111115)),
          ),
          Spacer(),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios,
                size: 16, color: Color.fromRGBO(73, 79, 89, 1)),
            onPressed: () {},
          ),
        ],
      ));
}
