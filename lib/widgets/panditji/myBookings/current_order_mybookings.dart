import 'package:digitalastro/theme/app_assets.dart';
import 'package:digitalastro/utils/colors.dart';
import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../router/my_router.dart';
import '../../../utils/text_styles.dart';

SingleChildScrollView currentOrder() {
  return SingleChildScrollView(
    child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: ListView.builder(
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          itemCount: 15,
          itemBuilder: (context, index) {
            return Container(
                padding: EdgeInsets.all(10.h),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: const Offset(0, 0),
                      blurRadius: 6,
                    ),
                  ],
                  color: AppColors.continerBackgroundColor,
                ),
                margin: EdgeInsets.only(bottom: 10.h, top: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Order ID:# ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 14.sp),
                            ),
                            Text(
                              "123456",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 14.sp),
                            ),
                          ],
                        ),
                        addHeight(10.h),
                        Row(
                          children: [
                            Container(
                              height: 97.h,
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
                                Text(
                                  "Akhand Ramayan ",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                addHeight(10.h),
                                Row(
                                  children: [
                                    Text(
                                      "Category : ",
                                      style: AppTextStyles.size14WithW500,
                                    ),
                                    Text(
                                      "Online Pooja",
                                      style: AppTextStyles.size14WithW500,
                                    ),
                                  ],
                                ),
                                addHeight(10.h),
                                Row(
                                  children: [
                                    Text(
                                      "13 Aug 2022",
                                      style: AppTextStyles.size14WithW500,
                                    ),
                                  ],
                                ),
                                addHeight(10.h),
                                Container(
                                  width: 200,
                                  height: 20,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Order Amount",
                                        style: AppTextStyles.size14WithW500,
                                      ),
                                      Spacer(),
                                      Text(
                                        "\u{20B9} 330.0",
                                        style: AppTextStyles.size14WithW500,
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
                          width: MediaQuery.of(context).size.width.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Customer Name: ",
                                style: TextStyle(fontSize: 14.sp),
                              ),
                              Text(
                                "Sahil Sharma",
                                style: AppTextStyles.size14WithW500,
                              ),
                              Spacer(),
                              MaterialButton(
                                onPressed: () {
                                  Get.toNamed(MyRouter.bookingDetailsScreen);
                                },
                                child: Text(
                                  "View Details",
                                  style: AppTextStyles.size14WithW500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        addHeight(10.h),
                        Container(
                          width: MediaQuery.of(context).size.width.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Spacer(),
                              Container(
                                height: 40.h,
                                width: 90.w,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40)),
                                    color: AppColors.red),
                                child: FittedBox(
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Decline",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              addWidth(10.h),
                              Container(
                                height: 40.h,
                                width: 90.w,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40)),
                                    color: Color(0xff19BB33)),
                                child: FittedBox(
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Accept",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ));
          },
        )),
  );
}
