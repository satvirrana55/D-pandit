import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../theme/app_assets.dart';
import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';

class CompletedPoojaDetails extends StatefulWidget {
  const CompletedPoojaDetails({Key? key}) : super(key: key);

  @override
  State<CompletedPoojaDetails> createState() => _CompletedPoojaDetailsState();
}

class _CompletedPoojaDetailsState extends State<CompletedPoojaDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: commonAppBarPanditji2("Pooja Details"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                width: 396.w,
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.02),
                        offset: const Offset(0, 1),
                        blurRadius: 6,
                      ),
                    ],
                    color: Color.fromRGBO(255, 255, 255, 1)),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Placed on 1 Mar, 10:00 am",
                              style: AppTextStyles.size14WithW500),
                          Text(
                            "Complete",
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Color.fromRGBO(182, 98, 0, 1),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    addHeight(19.h),
                    Row(
                      children: [
                        Text("Pooja Date:",
                            style: AppTextStyles.size14WithW400),
                        Text(" 02 March 2022",
                            style: AppTextStyles.size14WithW400),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Order ID ", style: AppTextStyles.size14WithW400),
                        Text("FV103232058",
                            style: AppTextStyles.size14WithW400),
                      ],
                    ),
                    addHeight(25.h),
                    Center(
                        child: Container(
                      alignment: Alignment.center,
                      width: 321.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check_circle_outline,
                                  color: AppColors.appPrimaryColor,
                                ),
                                SizedBox(
                                  width: 106.w,
                                  child: Divider(
                                    color: AppColors.appPrimaryColor,
                                    thickness: 2,
                                  ),
                                ),
                                Icon(
                                  Icons.check_circle_outline,
                                  color: AppColors.appPrimaryColor,
                                ),
                                SizedBox(
                                  width: 106.w,
                                  child: Divider(
                                    color: AppColors.appPrimaryColor,
                                    thickness: 2,
                                  ),
                                ),
                                Icon(
                                  Icons.check_circle_outline,
                                  color: AppColors.appPrimaryColor,
                                )
                              ],
                            ),
                          ),
                          addHeight(16.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Placed", style: TextStyle(fontSize: 14.sp)),
                              Text(
                                "Complete",
                                style: TextStyle(fontSize: 14.sp),
                              ),
                              Text(
                                "Delivered",
                                style: TextStyle(fontSize: 14.sp),
                              )
                            ],
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              addHeight(24.h),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.02),
                      offset: const Offset(0, 0),
                      blurRadius: 6,
                    ),
                  ],
                  color: AppColors.continerBackgroundColor,
                ),
                margin: EdgeInsets.only(bottom: 10.h),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50.h,
                            width: 57.w,
                            decoration: BoxDecoration(
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
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Akhand Ramayan ",
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Color.fromRGBO(17, 17, 21, 1),
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      "\u{20B9} 5000.0",
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          color: Color.fromRGBO(17, 17, 21, 1),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              addHeight(11.h),
                              Row(
                                children: [
                                  Text(
                                    "Category : ",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Color.fromRGBO(17, 17, 21, 1),
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "Online Pooja",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Color.fromRGBO(17, 17, 21, 1),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    addHeight(10.h),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Text(
                            "Pandit Name : ",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Color.fromRGBO(17, 17, 21, 1),
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Sachin",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Color.fromRGBO(17, 17, 21, 1),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              addHeight(24.h),
              Container(
                padding: EdgeInsets.all(14.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.02),
                      offset: const Offset(0, 0),
                      blurRadius: 6,
                    ),
                  ],
                  color: AppColors.continerBackgroundColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivery Address",
                      style: TextStyle(
                          fontSize: 18.sp,
                          color: Color.fromRGBO(17, 17, 21, 1),
                          fontWeight: FontWeight.w400),
                    ),
                    addHeight(16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.location_on_outlined,
                            size: 20,
                            color: AppColors.textColor,
                          ),
                        ),
                        addWidth(10.25.w),
                        SizedBox(
                          width: 269.w,
                          child: Text(
                            "4517 Washington Ave. Manchester Kentucky 39495",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: AppColors.textColor),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              addHeight(24.h),
              Container(
                width: 396.w,
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.02),
                      offset: const Offset(0, 0),
                      blurRadius: 6,
                    ),
                  ],
                  color: AppColors.continerBackgroundColor,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 27.h,
                      child: Row(
                        children: [
                          Text(
                            "Payment Details",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(17, 17, 21, 1)),
                          ),
                        ],
                      ),
                    ),
                    addHeight(10.h),
                    Container(
                      height: 75.h,
                      width: 396.w,
                      padding: EdgeInsets.zero,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 21.h,
                              width: 396.w,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Service Total",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(78, 78, 82, 1)),
                                  ),
                                  Text(
                                    "\u{20B9} 555.00",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(78, 78, 82, 1)),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Container(
                              width: 396.w,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Total",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(17, 17, 21, 1)),
                                  ),
                                  Text(
                                    "\u{20B9} 20.00",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(10, 135, 30, 1)),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(16.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.02),
                          offset: Offset(0.0, 4.0),
                          blurRadius: 4.h)
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rate Us",
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_border_rounded,
                          color: Color.fromRGBO(200, 193, 193, 1),
                          size: 28,
                        ),
                        Icon(
                          Icons.star_border_rounded,
                          color: Color.fromRGBO(200, 193, 193, 1),
                          size: 28,
                        ),
                        Icon(
                          Icons.star_border_rounded,
                          color: Color.fromRGBO(200, 193, 193, 1),
                          size: 28,
                        ),
                        Icon(
                          Icons.star_border_rounded,
                          color: Color.fromRGBO(200, 193, 193, 1),
                          size: 28,
                        ),
                        Icon(
                          Icons.star_border_rounded,
                          color: Color.fromRGBO(200, 193, 193, 1),
                          size: 28,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
