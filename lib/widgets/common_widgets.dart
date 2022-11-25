import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_assets.dart';

Container LogoWelcome() {
  return Container(
    height: 150.h,
    width: 150.w,
    margin: EdgeInsets.only(
      left: 109,
      top: 58.h,
    ),
    decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(Ig.logo), fit: BoxFit.cover)),
  );
}
