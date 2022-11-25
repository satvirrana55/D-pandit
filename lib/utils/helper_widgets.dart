import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'colors.dart';

Widget addVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}

Widget addHorizontalSpace(double width) {
  return SizedBox(
    width: width,
  );
}

Size textButtonFixedSize = Size(258.w, 54);

InputDecoration inputDecoration2({
  required String iconImage,
  required String text,
}) {
  return InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color: AppColors.primaryColor,
        width: 1,
      ),
    ),
    prefixIcon: Padding(
      padding: const EdgeInsets.all(14.0),
      child: ImageIcon(
        AssetImage(iconImage),
        color: AppColors.primaryColor,
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(
        color: AppColors.primaryColor,
        width: 0.5,
      ),
    ),
    labelText: text,
    // labelStyle: AppTextStyles.textSize14With400WeightprimaryColor,
    // floatingLabelStyle: AppTextStyles.textSize14With400WeightprimaryColor,
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(
        color: AppColors.primaryColor,
        width: 1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(
        color: AppColors.primaryColor,
        width: 1,
      ),
    ),
    fillColor: AppColors.white,
    errorStyle: GoogleFonts.poppins(
      fontSize: 16.0,
    ),
  );
}

PinTheme pinTheme() {
  return PinTheme(
    shape: PinCodeFieldShape.box,
    borderWidth: 0.5,
    disabledColor: AppColors.white,
    errorBorderColor: AppColors.red,
    activeColor: AppColors.primaryColor,
    inactiveFillColor: AppColors.white,
    selectedFillColor: AppColors.white,
    borderRadius: BorderRadius.circular(10),
    fieldHeight: 45,
    fieldWidth: 45,
    inactiveColor: AppColors.primaryColor,
    selectedColor: AppColors.primaryColor,
    activeFillColor: AppColors.white,
  );
}

customToast({
  required text,
  required isLong,
}) {
  return Fluttertoast.showToast(
    msg: text,
    toastLength: isLong ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: AppColors.toastGrey,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

dynamic loading(
    {@required bool? value, String? title, bool closeOverlays = false}) {
  if (value!) {
    EasyLoading.instance
      ..indicatorType = EasyLoadingIndicatorType.ring
      ..maskColor = AppColors.primaryColor.withOpacity(.2)

      /// custom style
      ..loadingStyle = EasyLoadingStyle.custom
      ..progressColor = AppColors.primaryColor
      ..indicatorColor = AppColors.primaryColor
      ..backgroundColor = AppColors.white
      ..textColor = AppColors.black
      ..textStyle = GoogleFonts.poppins(fontWeight: FontWeight.w500)

      ///
      ..userInteractions = false
      ..animationStyle = EasyLoadingAnimationStyle.offset
      ..dismissOnTap = false;
    EasyLoading.show(
      maskType: EasyLoadingMaskType.custom,
      status: "Loading...",
      dismissOnTap: false,
    );
  } else {
    EasyLoading.dismiss();
  }
}
