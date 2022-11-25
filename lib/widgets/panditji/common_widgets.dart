import 'package:digitalastro/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../router/my_router.dart';
import '../../theme/app_assets.dart';
import '../../utils/text_styles.dart';
import '../common_app_bar.dart';

SingleChildScrollView scroolListMyBookings() {
  return SingleChildScrollView(
    child: Container(
      decoration: BoxDecoration(boxShadow: [
        // BoxShadow(
        //   color: Colors.black.withOpacity(.08),
        //   offset: Offset(0, 0),
        //   blurRadius: 6,
        // ),
      ], color: AppColors.continerBackgroundColor),
      // height: 400.h,
      child: ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10.h),
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.08),
                        offset: Offset(0, 0),
                        blurRadius: 6,
                      ),
                    ],
                    color: AppColors.continerBackgroundColor),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FittedBox(
                            child: Text(
                              "Riya Jagtop",
                              style: AppTextStyles.size16WithW500,
                            ),
                          ),
                          addHeight(5.h),
                          FittedBox(
                            child: Text(
                              "Duration of call : 5 min",
                              style: AppTextStyles.size16WithW400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    addWidth(15.w),
                    Container(
                      child: Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FittedBox(
                              child: Text(
                                "INR 50",
                                style: AppTextStyles.size16WithW400,
                              ),
                            ),
                            addHeight(5.h),
                            Container(
                              // width: 396 / 3.1,
                              child: FittedBox(
                                child: Text(
                                  "Status : Completed",
                                  style: TextStyle(
                                    color: Color(0xff19BB33),
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10.h),
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.08),
                        offset: Offset(0, 0),
                        blurRadius: 6,
                      ),
                    ],
                    color: AppColors.continerBackgroundColor),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FittedBox(
                            child: Text(
                              "Riya Jagtop",
                              style: AppTextStyles.size16WithW500,
                            ),
                          ),
                          addHeight(5.h),
                          FittedBox(
                            child: Text(
                              "Duration of call : 5 min",
                              style: AppTextStyles.size16WithW400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    addWidth(15.w),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FittedBox(
                            child: Text(
                              "INR 50",
                              style: AppTextStyles.size16WithW400,
                            ),
                          ),
                          addHeight(5.h),
                          FittedBox(
                            child: Text(
                              "Status : In Queue",
                              style: TextStyle(
                                color: AppColors.red,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10.h),
                            height: 45.h,
                            width: 95.w,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                color: AppColors.appPrimaryColor),
                            child: MaterialButton(
                              onPressed: () {
                                Get.toNamed(MyRouter.chatScreenUser);
                              },
                              child: Row(
                                children: [
                                  Image.asset(
                                    Ig.chat,
                                    height: 17.h,
                                    width: 20.w,
                                  ),
                                  Text(
                                    "  Chat",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    ),
  );
}
