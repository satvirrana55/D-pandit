import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';
import '../utils/text_styles.dart';

class CommonButton extends StatelessWidget {
  String buttonText;
  VoidCallback function;

  // double buttonWidth;
  // double buttonHeight;
  CommonButton(this.buttonText, this.function, {Key? key})
      : super(key: key); // change this

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.appPrimaryColor,
            borderRadius: BorderRadius.all(Radius.circular(30.w))),
        child: MaterialButton(
          minWidth: 200.w,
          height: 50.h,
          onPressed: function, // add this here
          child: Text(buttonText,
              textAlign: TextAlign.center,
              style: AppTextStyles.commonButtonTextWhite),
        ),
      ),
    );
  }
}

class CommonButton1 extends StatelessWidget {
  String buttonText;
  VoidCallback function;

  // double buttonWidth;
  // double buttonHeight;
  CommonButton1(this.buttonText, this.function, {Key? key})
      : super(key: key); // change this

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: AppColors.appPrimaryColor,
            ),
            borderRadius: BorderRadius.all(Radius.circular(30.w))),
        child: MaterialButton(
          minWidth: 250.h,
          height: 40.h,

          onPressed: function, // add this here
          child: Text(buttonText,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.sp).copyWith(
                  color: AppColors.appPrimaryColor,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}

class CommonButton2 extends StatelessWidget {
  String buttonText;
  VoidCallback function;

  // double buttonWidth;
  // double buttonHeight;
  CommonButton2(this.buttonText, this.function, {Key? key})
      : super(key: key); // change this

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: AppColors.appPrimaryColor,
            ),
            borderRadius: BorderRadius.all(Radius.circular(30.w))),
        child: MaterialButton(
          minWidth: 280.w,
          height: 50.h,

          onPressed: function, // add this here
          child: Text(buttonText,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.sp).copyWith(
                  color: AppColors.appPrimaryColor,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}

class CommonButton3 extends StatelessWidget {
  String buttonText;
  VoidCallback function;

  // double buttonWidth;
  // double buttonHeight;
  CommonButton3(this.buttonText, this.function, {Key? key})
      : super(key: key); // change this

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.appPrimaryColor,
            borderRadius: BorderRadius.all(Radius.circular(30.w))),
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          height: 50.h,
          onPressed: function, // add this here
          child: Text(buttonText,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.sp)
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
