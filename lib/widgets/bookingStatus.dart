import 'package:digitalastro/router/my_router.dart';
import 'package:digitalastro/theme/app_assets.dart';
import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/text_styles.dart';

SingleChildScrollView userbookingStatus(text, color, function) {
  text;
  color;
  VoidCallback? function;
  return SingleChildScrollView(
    child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 16.w),
        child: ListView.builder(
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          itemCount: 15,
          itemBuilder: (context, index) {
            return Card(
              child: FittedBox(
                child: Container(
                    height: 198.h,
                    // width: 395.w,
                    padding: EdgeInsets.all(5.w),
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.02),
                          offset: Offset(0, 0),
                          blurRadius: 6,
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            addHeight(16.h),
                            Container(
                              width: 390.w,
                              height: 22.h,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Text("Order ID:# ",
                                            style:
                                                AppTextStyles.size14WithW500),
                                        Text("123456",
                                            style:
                                                AppTextStyles.size14WithW500),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    text,
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.sp,
                                        color: color),
                                  ),
                                ],
                              ),
                            ),
                            addHeight(16.h),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  height: 98.h,
                                  width: 111.w,
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      image: DecorationImage(
                                          image: AssetImage(Ig.shivjiHome))),
                                ),
                                addWidth(10.w),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text("Akhand Ramayan ",
                                          style: AppTextStyles.size16WithW500),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Category : ",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color:
                                                  Color.fromRGBO(78, 78, 82, 1),
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          "Online Pooja",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color:
                                                  Color.fromRGBO(78, 78, 82, 1),
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Booking Date: ",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color:
                                                  Color.fromRGBO(78, 78, 82, 1),
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          "13 Aug 2022",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color:
                                                  Color.fromRGBO(78, 78, 82, 1),
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 265.w,
                                      height: 20.h,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Order Amount",
                                              style:
                                                  AppTextStyles.size14WithW500),
                                          Text(
                                            "\u{20B9} 330.0",
                                            style: AppTextStyles.size16WithW500,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            addHeight(10.h),
                            Container(
                              width: 390.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: function,
                                    child: Text("View Details",
                                        style: GoogleFonts.poppins(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff2964BD))),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            );
          },
        )),
  );
}
