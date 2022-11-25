import 'package:digitalastro/utils/colors.dart';
import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../router/my_router.dart';
import '../../../utils/text_styles.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({Key? key}) : super(key: key);

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: commonAppBarPanditji2("My Wallet"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                addHeight(24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Wallet Balance",
                      style: AppTextStyles.size14WithW500,
                    ),
                    Container(
                      height: 40.h,
                      // width: 50.w,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: AppColors.appPrimaryColor),
                      child: MaterialButton(
                        onPressed: () {
                          Get.toNamed(MyRouter.rechargeWallet);
                        },
                        child: Row(
                          children: [
                            Text(
                              "Recharge",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp,
                                  color: AppColors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text("\u{20B9}"),
                    Text(
                      "00.00",
                      style: GoogleFonts.poppins(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black),
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.grey,
                ),
                addHeight(10.h),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Wallet Transaction",
                      style: AppTextStyles.size16WithW500),
                ),
                addHeight(15.h),
                Container(
                  height: 350.h,
                  width: 396.w,
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 107.h,
                        width: 396.w,
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(224, 224, 224, 1),
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Pooja booked with Pandit Sachin",
                                    style: AppTextStyles.size16WithW500,
                                  ),
                                  Text("-120",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.sp,
                                          color: const Color.fromRGBO(
                                              248, 86, 13, 1),
                                          fontFamily: "Poppins")),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Duration- 2 min",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    fontFamily: "Poppins"),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "18 Aug 21, 10:50 PM",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    fontFamily: "Poppins"),
                              ),
                            ),
                            addHeight(10.h)
                          ],
                        ),
                      );
                    },
                  ),
                ),
                addHeight(10.h),
                Text(
                  "View All",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                      color: AppColors.red),
                ),
                addHeight(20.h),
                Align(
                  alignment: Alignment.topLeft,
                  child:
                      Text("Pooja Refund", style: AppTextStyles.size16WithW500),
                ),
                addHeight(15.h),
                Container(
                  height: 270.h,
                  width: 396.w,
                  child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 107.h,
                        width: 396.w,
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(224, 224, 224, 1),
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pooja rejected by\nPandit Sachin",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(
                                            17, 17, 21, 1)),
                                  ),
                                  Row(
                                    children: [
                                      Text("status : ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: const Color.fromRGBO(
                                                  17, 17, 21, 1),
                                              fontFamily: "Poppins")),
                                      Text("Pending",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: const Color.fromRGBO(
                                                  182, 98, 0, 1),
                                              fontFamily: "Poppins")),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "18 Aug 21, 10:50 PM",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    fontFamily: "Poppins"),
                              ),
                            ),
                            addHeight(10.h)
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
