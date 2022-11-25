import 'package:digitalastro/router/my_router.dart';
import 'package:digitalastro/theme/app_assets.dart';
import 'package:digitalastro/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:material_dialogs/material_dialogs.dart';

import '../../../widgets/common_app_bar.dart';

class VirtualPoojaPayment extends StatefulWidget {
  const VirtualPoojaPayment({Key? key}) : super(key: key);

  @override
  State<VirtualPoojaPayment> createState() => _VirtualPoojaPaymentState();
}

class _VirtualPoojaPaymentState extends State<VirtualPoojaPayment> {
  final _poojaChargesController = TextEditingController();
  final _poojaDescriptionController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var _poojaCategoryController;
  String? newValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: commonAppBarPanditji2("Payment Information"),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    addHeight(20.h),
                    Container(
                      height: 231.h,
                      width: 396.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 151.h,
                            width: 396.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromRGBO(224, 224, 224, 1),
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10, left: 16),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 33.h,
                                        child: Text(
                                          "Payment Details ",
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromRGBO(
                                                  17, 17, 21, 1)),
                                        ),
                                      ),
                                      Container(
                                        height: 20.h,
                                        child: Text(
                                          "(2 items)",
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                addHeight(5.h),
                                Container(
                                  height: 75.h,
                                  width: 364.w,
                                  margin: EdgeInsets.only(left: 16, right: 16),
                                  padding: EdgeInsets.zero,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 21.h,
                                          width: 364.w,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Total Amount",
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromRGBO(
                                                        17, 17, 21, 1)),
                                              ),
                                              Text(
                                                "\u{20B9} 50",
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromRGBO(
                                                        78, 78, 82, 1)),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 1.h,
                                          width: 364.w,
                                          color:
                                              Color.fromRGBO(224, 224, 224, 1),
                                        ),
                                        Container(
                                          height: 21.h,
                                          width: 364.w,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Total Payable Amount",
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black),
                                              ),
                                              Text(
                                                "\u{20B9} 110",
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 56.h,
                            width: 396.w,
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(246, 255, 247, 1),
                              border: Border.all(
                                color: Color.fromRGBO(224, 224, 224, 1),
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 18.h,
                                  width: 18.w,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(Ig.discount),
                                          fit: BoxFit.cover)),
                                ),
                                addWidth(10.h),
                                Container(
                                  height: 21.h,
                                  width: 320.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Have A Coupon Code ?",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.green),
                                      ),
                                      Text(
                                        "Apply",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.green),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    addHeight(30.h),
                    Container(
                      height: 350.h,
                      width: 396.w,
                      padding: EdgeInsets.only(top: 16),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Payment Options",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp),
                          ),
                          addHeight(20.h),
                          Material(
                            elevation: 0.1,
                            child: Container(
                              width: 396.w,
                              height: 48.h,
                              decoration: BoxDecoration(color: Colors.white),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 24.h,
                                            width: 35.w,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors.grey),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4))),
                                            child: Image.asset(
                                              Ig.card,
                                              height: 15.h,
                                              width: 15.w,
                                            ),
                                          ),
                                          addWidth(8.w),
                                          Text(
                                            "Credit card",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Poppins',
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 40.h,
                                        width: 40.w,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(Ig.downarrow),
                                                fit: BoxFit.cover)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          addHeight(10.h),
                          Material(
                            elevation: 0.2,
                            child: Container(
                              width: 396.w,
                              height: 48.h,
                              decoration: BoxDecoration(color: Colors.white),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 24.h,
                                            width: 35.w,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors.grey),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4))),
                                            child: Image.asset(
                                              Ig.gpay,
                                              height: 15.h,
                                              width: 15.w,
                                            ),
                                          ),
                                          addWidth(8.w),
                                          Text(
                                            "Phonepe/google pay/bhim UPI",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Poppins',
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 40.h,
                                        width: 40.w,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(Ig.downarrow),
                                                fit: BoxFit.cover)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          addHeight(10.h),
                          Material(
                            elevation: 0.3,
                            child: Container(
                              width: 396.w,
                              height: 48.h,
                              decoration: BoxDecoration(color: Colors.white),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 24.h,
                                            width: 35.w,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors.grey),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4))),
                                            child: Image.asset(
                                              Ig.card,
                                            ),
                                          ),
                                          addWidth(8.w),
                                          Text(
                                            "Debit card",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Poppins',
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 40.h,
                                        width: 40.w,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(Ig.downarrow),
                                                fit: BoxFit.cover)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          addHeight(10.h),
                          Material(
                            elevation: 0.4,
                            child: Container(
                              width: 396.w,
                              height: 48.h,
                              decoration: BoxDecoration(color: Colors.white),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 24.h,
                                            width: 35.w,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors.grey),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4))),
                                            child: Image.asset(
                                              Ig.bank,
                                              height: 10.h,
                                              width: 10.w,
                                            ),
                                          ),
                                          addWidth(8.w),
                                          Text(
                                            "Net Banking",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Poppins',
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 40.h,
                                        width: 40.w,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(Ig.downarrow),
                                                fit: BoxFit.cover)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          addHeight(10.h),
                          Material(
                            elevation: 0.5,
                            child: Container(
                              width: 396.w,
                              height: 48.h,
                              decoration: BoxDecoration(color: Colors.white),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 24.h,
                                            width: 35.w,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors.grey),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(4))),
                                            child: Image.asset(
                                              Ig.wallet,
                                              height: 15.h,
                                              width: 15.w,
                                            ),
                                          ),
                                          addWidth(8.w),
                                          Text(
                                            "Wallet",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Poppins',
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 40.h,
                                        width: 40.w,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(Ig.downarrow),
                                                fit: BoxFit.cover)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    addHeight(101.h),
                    Container(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\u{20B9} 110",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          CommonButton("Pay Now", () {
                            Dialogs.materialDialog(
                                onClose: (value) {
                                  if (_formKey.currentState!.validate()) {
                                    _formKey.currentState?.save();
                                    Get.toNamed(MyRouter.homeScreenPanditji);
                                  }
                                },
                                color: Colors.white,
                                context: context,
                                actions: [
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Center(
                                            child: Container(
                                              height: 50.h,
                                              width: 50.w,
                                              child: Image.asset(
                                                Ig.rightclickArrow,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      addHeight(30.h),
                                      Text(
                                        "Pooja Booking Successfull",
                                        style: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      addHeight(50.h),
                                      Text(
                                        "Your pooja booking has successfully done.",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      CommonButton1("Proceed to Dashboard", () {
                                        if (_formKey.currentState!.validate()) {
                                          Get.toNamed(
                                              MyRouter.homeScreenPanditji);
                                        }
                                      }),
                                      CommonButton("Explore more Pooja's", () {
                                        if (_formKey.currentState!.validate()) {
                                          Get.toNamed(
                                              MyRouter.homeScreenPanditji);
                                        }
                                      })
                                    ],
                                  ),
                                ]);
                            // Get.toNamed(MyRouter.loginScreen);
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
