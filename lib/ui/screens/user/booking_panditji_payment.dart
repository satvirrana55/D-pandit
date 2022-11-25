import 'package:digitalastro/router/my_router.dart';
import 'package:digitalastro/theme/app_assets.dart';
import 'package:digitalastro/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:material_dialogs/material_dialogs.dart';

import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';
import '../../../widgets/common_app_bar.dart';

class BookingPanditJiPayment extends StatefulWidget {
  const BookingPanditJiPayment({Key? key}) : super(key: key);

  @override
  State<BookingPanditJiPayment> createState() => _BookingPanditJiPaymentState();
}

class _BookingPanditJiPaymentState extends State<BookingPanditJiPayment> {
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  addHeight(10.h),
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
                                      child: Text("Payment Details ",
                                          style: AppTextStyles.size16WithW500),
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
                                              style:
                                                  AppTextStyles.size14WithW400,
                                            ),
                                            Text(
                                              "\u{20B9} 50",
                                              style:
                                                  AppTextStyles.size14WithW400,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 1.h,
                                        width: 364.w,
                                        color: Color.fromRGBO(224, 224, 224, 1),
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
                                              style:
                                                  AppTextStyles.size14WithW500,
                                            ),
                                            Text(
                                              "\u{20B9} 110",
                                              style:
                                                  AppTextStyles.size14WithW400,
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
                          // height: 56.h,
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
                                          fontWeight: FontWeight.w600,
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
                  addHeight(20.h),
                  Container(
                    height: 380.h,
                    width: 396.w,
                    padding: EdgeInsets.only(top: 16),
                    decoration: BoxDecoration(color: Colors.white),
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
                        Container(
                          width: 396.w,
                          padding:
                              EdgeInsets.only(bottom: 8, left: 10, right: 10),
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
                                                width: 1, color: Colors.grey),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4))),
                                        child: Image.asset(
                                          Ig.card,
                                          height: 15.h,
                                          width: 15.w,
                                        ),
                                      ),
                                      addWidth(18.w),
                                      Text(
                                        "Credit card",
                                        style: AppTextStyles.size16WithW500,
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
                        Container(
                          width: 396.w,
                          padding:
                              EdgeInsets.only(bottom: 8, left: 10, right: 10),
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
                                                width: 1, color: Colors.grey),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4))),
                                        child: Image.asset(
                                          Ig.gpay,
                                          height: 15.h,
                                          width: 15.w,
                                        ),
                                      ),
                                      addWidth(18.w),
                                      Text(
                                        "Phonepe/google pay/bhim UPI",
                                        style: AppTextStyles.size16WithW500,
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
                        Container(
                          width: 396.w,
                          padding:
                              EdgeInsets.only(bottom: 8, left: 10, right: 10),
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
                                                width: 1, color: Colors.grey),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4))),
                                        child: Image.asset(
                                          Ig.card,
                                        ),
                                      ),
                                      addWidth(18.w),
                                      Text(
                                        "Debit card",
                                        style: AppTextStyles.size16WithW500,
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
                        Container(
                          width: 396.w,
                          padding:
                              EdgeInsets.only(bottom: 8, left: 10, right: 10),
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
                                                width: 1, color: Colors.grey),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4))),
                                        child: Image.asset(
                                          Ig.bank,
                                          height: 10.h,
                                          width: 10.w,
                                        ),
                                      ),
                                      addWidth(18.w),
                                      Text(
                                        "Net Banking",
                                        style: AppTextStyles.size16WithW500,
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
                        Container(
                          width: 396.w,
                          // height: 55.h,
                          padding:
                              EdgeInsets.only(bottom: 8, left: 10, right: 10),
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
                                                width: 1, color: Colors.grey),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4))),
                                        child: Image.asset(
                                          Ig.wallet,
                                          height: 15.h,
                                          width: 15.w,
                                        ),
                                      ),
                                      addWidth(18.w),
                                      Text(
                                        "Wallet",
                                        style: AppTextStyles.size16WithW500,
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
                        Spacer(),
                      ],
                    ),
                  ),
                  addHeight(113.h),
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
                                  Get.toNamed(MyRouter.userHomeScreen);
                                }
                              },
                              color: Colors.white,
                              context: context,
                              actions: [
                                Container(
                                  // height: 312.h,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Center(
                                            child: Container(
                                              width: 50.w,
                                              child: Image.asset(
                                                Ig.rightclickArrow,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      addHeight(24.h),
                                      Text(
                                        "Pooja Booking Successfull",
                                        style: AppTextStyles.size18WithW600,
                                      ),
                                      addHeight(16.h),
                                      Text(
                                        "Your pooja booking has successfully done.",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      CommonButton1("  Proceed to Dashboard  ",
                                          () {
                                        if (_formKey.currentState!.validate()) {
                                          Get.toNamed(MyRouter.userHomeScreen);
                                        }
                                      }),
                                      CommonButton(
                                          "   Explore more Pooja's     ", () {
                                        if (_formKey.currentState!.validate()) {
                                          Get.toNamed(MyRouter.userHomeScreen);
                                        }
                                      })
                                    ],
                                  ),
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
    );
  }
}
