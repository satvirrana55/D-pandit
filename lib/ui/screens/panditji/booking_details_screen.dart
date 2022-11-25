import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:digitalastro/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../theme/app_assets.dart';
import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';

class BookingDetailsScreen extends StatefulWidget {
  const BookingDetailsScreen({Key? key}) : super(key: key);

  @override
  State<BookingDetailsScreen> createState() => _BookingDetailsScreenState();
}

class _BookingDetailsScreenState extends State<BookingDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: commonAppBarPanditji("Booking Details"),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20.h),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      offset: const Offset(0, 1),
                      blurRadius: 6,
                    ),
                  ],
                  color: AppColors.continerBackgroundColor,
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Customer Details",
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Completed",
                            style: AppTextStyles.size14WithW500,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Order ID:   #",
                          style: TextStyle(
                              fontSize: 13.sp, color: AppColors.textColor),
                        ),
                        Text(
                          "123456",
                          style: AppTextStyles.size14WithW500,
                        ),
                      ],
                    ),
                    addHeight(20.h),
                    Row(
                      children: [
                        Text(
                          "Pooja Date:   ",
                          style: TextStyle(
                            fontSize: 13.sp,
                          ),
                        ),
                        Text(
                          "22-10-2022",
                          style: AppTextStyles.size14WithW500,
                        ),
                      ],
                    ),
                    addHeight(20.h),
                    Row(
                      children: [
                        Text(
                          "Customer Name: ",
                          style: TextStyle(
                              fontSize: 13.sp, color: AppColors.textColor),
                        ),
                        Text(
                          "Manish Sharma",
                          style: AppTextStyles.size14WithW500,
                        ),
                      ],
                    ),
                    addHeight(20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Address:  ",
                          style: TextStyle(
                              fontSize: 13.sp, color: AppColors.textColor),
                        ),
                        Expanded(
                          child: Text(
                            "3517 W. Gray St. Utica, Pennsylvania 57867"
                            "State : Maharashtra",
                            style: TextStyle(
                                fontSize: 13.sp, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    addHeight(20.h),
                    Row(
                      children: [
                        Text(
                          "Mobile Number: ",
                          style: TextStyle(
                              fontSize: 13.sp, color: AppColors.textColor),
                        ),
                        Text(
                          "7414055310",
                          style: TextStyle(
                            fontSize: 13.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              addHeight(10.h),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Pooja Details",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
              ),
              addHeight(10.h),
              Container(
                  padding: EdgeInsets.all(10.h),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        offset: const Offset(0, 0),
                        blurRadius: 6,
                      ),
                    ],
                    color: AppColors.continerBackgroundColor,
                  ),
                  margin: EdgeInsets.only(bottom: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 97.h,
                        width: 111.w,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
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
                                fontSize: 16.sp, fontWeight: FontWeight.bold),
                          ),
                          addHeight(5.h),
                          Row(
                            children: [
                              Text(
                                "Category : ",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                ),
                              ),
                              Text(
                                "Online Pooja",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                          addHeight(5.h),
                          Row(
                            children: [
                              Text(
                                "13 Aug 2022",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                          addHeight(5.h),
                          Container(
                            width: 200,
                            height: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      ),
                    ],
                  )),
              addHeight(10.h),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Payment Details",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
              ),
              addHeight(28.h),
              Container(
                padding: EdgeInsets.all(10.h),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.09),
                      offset: const Offset(0, 1),
                      blurRadius: 6,
                    ),
                  ],
                  color: AppColors.continerBackgroundColor,
                ),
                child: Row(
                  children: [
                    Text(
                      "Order Amount  ",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      "\u{20B9} 330.0",
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CommonButton("Mark as completed", () {
                Get.back();
              })
            ],
          ),
        ),
      ),
    );
  }
}
