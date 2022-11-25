import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../router/my_router.dart';
import '../../../theme/app_assets.dart';
import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';

class ApprovedPoojaDetails extends StatefulWidget {
  const ApprovedPoojaDetails({Key? key}) : super(key: key);

  @override
  State<ApprovedPoojaDetails> createState() => _ApprovedPoojaDetailsState();
}

class _ApprovedPoojaDetailsState extends State<ApprovedPoojaDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: commonAppBarPanditji2("Pooja Details"),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 396.w,
                padding: EdgeInsets.all(14),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Placed on 1 Mar, 10:00 am",
                            style: AppTextStyles.size14WithW500,
                          ),
                          Text(
                            "Approve",
                            style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffb66200)),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.check_circle_outline,
                                color: AppColors.appPrimaryColor,
                                size: 20.h,
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
                                size: 20.h,
                              ),
                              SizedBox(
                                width: 106.w,
                                child: Divider(
                                  color: Color.fromRGBO(188, 188, 188, 1),
                                  thickness: 2,
                                ),
                              ),
                              Icon(
                                Icons.check_circle_outline,
                                color: AppColors.appPrimaryColor,
                                size: 20.h,
                              ),
                            ],
                          ),
                          addHeight(16.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Placed",
                                  style: AppTextStyles.size14WithW400),
                              Text(
                                "Complete",
                                style: AppTextStyles.size14WithW400,
                              ),
                              Text(
                                "Delivered",
                                style: AppTextStyles.size14WithW400,
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
                height: 130.h,
                width: 396.w,
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(bottom: 10.h),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 50.h,
                            width: 57.w,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                    image: AssetImage(Ig.shivjiHome),
                                    fit: BoxFit.cover)),
                          ),
                          addWidth(10.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                      style: AppTextStyles.size14WithW400,
                                    ),
                                    addWidth(100.w),
                                    Text(
                                      "\u{20B9} 5000.0",
                                      style: AppTextStyles.size16WithW500,
                                    ),
                                  ],
                                ),
                              ),
                              addHeight(4.h),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivery Address",
                      style: AppTextStyles.size18WithW500,
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
                            style: AppTextStyles.size14WithW400,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              addHeight(24.h),
              Container(
                height: 140.h,
                width: 396.w,
                padding: EdgeInsets.all(14),
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
                      height: 27.h,
                      child: Row(
                        children: [
                          Text(
                            "Payment Details",
                            style: AppTextStyles.size18WithW500,
                          ),
                        ],
                      ),
                    ),
                    addHeight(10.h),
                    Container(
                      // height: 75.h,
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
                                    style: AppTextStyles.size14WithW400,
                                  ),
                                  Text("\u{20B9} 555.00",
                                      style: AppTextStyles.size14WithW400),
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
                                    style: AppTextStyles.size14WithW400,
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
              addHeight(36.h),
              Center(
                child: Container(
                  height: 56.h,
                  width: 227.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        offset: const Offset(0, 1),
                        blurRadius: 6,
                      ),
                    ],
                    color: AppColors.appPrimaryColor,
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Get.toNamed(MyRouter.chatScreenUser);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Ig.chat,
                          height: 17.h,
                          width: 20.w,
                        ),
                        Text(
                          "  Chat",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: AppColors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
