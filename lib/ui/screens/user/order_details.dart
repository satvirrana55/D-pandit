import 'package:digitalastro/theme/app_assets.dart';
import 'package:digitalastro/utils/colors.dart';
import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:digitalastro/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderViewPooja extends StatefulWidget {
  const OrderViewPooja({super.key});

  @override
  State<OrderViewPooja> createState() => _OrderViewPoojaState();
}

class _OrderViewPoojaState extends State<OrderViewPooja> {
  String status = "Approve";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: commonAppBarPanditji1("Pooja Detail"),
        backgroundColor: const Color(0xffF5F5F5),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addHeight(24.h),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 14.h, horizontal: 18.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF5F5F5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.02),
                            offset: Offset(0.0, 4.0),
                            blurRadius: 4.h)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Placed on 1 Mar, 10:00 am ",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold)),
                          if (status == "Approve") ...{
                            Text(
                              "Approve",
                              style: TextStyle(
                                  color: AppColors.brownBorderColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold),
                            )
                          },
                          if (status == "Completed") ...{
                            Text(
                              "Completed",
                              style: TextStyle(
                                  color: AppColors.greenBorderColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold),
                            )
                          },
                          if (status == "Reject") ...{
                            Text(
                              "Reject",
                              style: TextStyle(
                                  color: AppColors.red,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold),
                            )
                          },
                        ],
                      ),
                      addHeight(19.h),
                      Text(
                        "Pooja Date : 2 March 2022",
                        style: TextStyle(fontSize: 14.sp),
                      ),
                      addHeight(6.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Order ID",
                              style: TextStyle(
                                  fontSize: 14.sp, color: AppColors.textColor)),
                          Text(
                            "FV2103232058",
                            style: TextStyle(
                              color: AppColors.textColor,
                              fontSize: 14.sp,
                            ),
                          )
                        ],
                      ),
                      addHeight(25.5.h),
                      status != "Reject"
                          ? Center(
                              child: Container(
                              alignment: Alignment.center,
                              width: 321.w,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.check_circle_outline,
                                          color: AppColors.appPrimaryColor,
                                        ),
                                        SizedBox(
                                          width: 106.w,
                                          child: Divider(
                                            color: status != "Pending"
                                                ? AppColors.appPrimaryColor
                                                : Color(0xFFBCBCBC),
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
                                            color: status == "Completed"
                                                ? AppColors.appPrimaryColor
                                                : Color(0xFFBCBCBC),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Placed",
                                          style: TextStyle(fontSize: 14.sp)),
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
                          : Container()
                    ],
                  ),
                ),
                addHeight(24.h),
                Container(
                  padding: EdgeInsets.all(10.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF5F5F5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.02),
                            offset: Offset(0.0, 4.0),
                            blurRadius: 4.h)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 56.65.w,
                            height: 49.75.h,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4.h)),
                                image: DecorationImage(
                                    image: AssetImage(Ig.shivjiHome))),
                          ),
                          addWidth(10.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              status != "Reject"
                                  ? addHeight(20.88)
                                  : addHeight(0.h),
                              Text(
                                "Akhand Ramayan",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                              addHeight(3.87.h),
                              Text(
                                "Category : Online Pooja",
                                style: TextStyle(fontSize: 12.sp),
                              )
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.currency_rupee,
                            size: 13,
                          ),
                          Text(
                            "5000",
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      addHeight(12.h),
                      Row(
                        children: [
                          Text(
                            "Pandit Name : ",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                          Text("Sachin",
                              style: TextStyle(
                                  fontSize: 16.h, fontWeight: FontWeight.bold))
                        ],
                      )
                    ],
                  ),
                ),
                addHeight(24.h),
                Container(
                  padding: EdgeInsets.all(14.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF5F5F5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.02),
                            offset: Offset(0.0, 4.0),
                            blurRadius: 4.h)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery Address",
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold),
                      ),
                      addHeight(16.h),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 20,
                            color: AppColors.textColor,
                          ),
                          addWidth(10.25.w),
                          SizedBox(
                            width: 269.w,
                            height: 42.h,
                            child: Text(
                              "4517 Washington Ave. Manchester Kentucky 39495",
                              style: TextStyle(
                                  fontSize: 14.sp, color: AppColors.textColor),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(14.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF5F5F5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.02),
                            offset: Offset(0.0, 4.0),
                            blurRadius: 4.h)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Payment Detail",
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold),
                      ),
                      addHeight(10.h),
                      Row(
                        children: [
                          Text(
                            "Service Total",
                            style: TextStyle(
                                fontSize: 14.sp, color: AppColors.textColor),
                          ),
                          Spacer(),
                          Icon(
                            Icons.currency_rupee,
                            size: 11,
                          ),
                          Text(
                            "555.00",
                            style: TextStyle(
                                fontSize: 14.sp, color: AppColors.textColor),
                          ),
                        ],
                      ),
                      Divider(
                        color: AppColors.thirdBlackColor,
                      ),
                      Row(
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(fontSize: 14.sp),
                          ),
                          Spacer(),
                          Icon(
                            Icons.currency_rupee,
                            size: 11,
                            color: AppColors.badgeGreenColor,
                          ),
                          Text(
                            "20.00",
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.badgeGreenColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                addHeight(24.h),
                (status == "Completed")
                    ? Container(
                        padding: EdgeInsets.all(16.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffF5F5F5),
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
                                  fontSize: 18.sp, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_border_rounded,
                                  color: Color(0xFFC8C1C1),
                                  size: 29,
                                ),
                                Icon(
                                  Icons.star_border_rounded,
                                  color: Color(0xFFC8C1C1),
                                  size: 29,
                                ),
                                Icon(
                                  Icons.star_border_rounded,
                                  color: Color(0xFFC8C1C1),
                                  size: 29,
                                ),
                                Icon(
                                  Icons.star_border_rounded,
                                  color: Color(0xFFC8C1C1),
                                  size: 29,
                                ),
                                Icon(
                                  Icons.star_border_rounded,
                                  color: Color(0xFFC8C1C1),
                                  size: 29,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    : Container(),
                status == "Approve" || status == "Pending"
                    ? CommonButton("Chat", () {})
                    : Column(children: [
                        CommonButton3(
                          "Choose Another Pandit",
                          () {},
                        ),
                        CommonButton2("Request Refund", () {}),
                      ]),
              ]),
        )));
  }
}
