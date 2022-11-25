import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:digitalastro/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:material_dialogs/material_dialogs.dart';

import '../../../router/my_router.dart';
import '../../../theme/app_assets.dart';
import '../../../utils/colors.dart';

class RequestForRefund extends StatefulWidget {
  const RequestForRefund({Key? key}) : super(key: key);

  @override
  State<RequestForRefund> createState() => _RequestForRefundState();
}

class _RequestForRefundState extends State<RequestForRefund> {
  TextEditingController _messageController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: commonAppBarPanditji("Pooja Details"),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  height: 164.h,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.02),
                        offset: const Offset(0, 1),
                        blurRadius: 6,
                      ),
                    ],
                    color: AppColors.continerBackgroundColor,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Order ID ",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(78, 78, 82, 1)),
                          ),
                          Text(
                            "FV103232058",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(78, 78, 82, 1)),
                          ),
                        ],
                      ),
                      addHeight(14.h),
                      Column(
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
                                      width: 287.w,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Akhand Ramayan ",
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Color.fromRGBO(
                                                    17, 17, 21, 1),
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Text(
                                            "\u{20B9} 5000.0",
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Color.fromRGBO(
                                                    17, 17, 21, 1),
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
                                              fontFamily: "Poppins",
                                              color:
                                                  Color.fromRGBO(17, 17, 21, 1),
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "Online Pooja",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontFamily: "Poppins",
                                              color:
                                                  Color.fromRGBO(17, 17, 21, 1),
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
                                      fontFamily: "Poppins",
                                      color: Color.fromRGBO(17, 17, 21, 1),
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "Sachin",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontFamily: "Poppins",
                                      color: Color.fromRGBO(17, 17, 21, 1),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                addHeight(24.h),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Issues",
                    style: TextStyle(
                        color: Color.fromRGBO(17, 17, 21, 1),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp),
                  ),
                ),
                addHeight(16.h),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.02),
                        offset: const Offset(0, 1),
                        blurRadius: 6,
                      ),
                    ],
                    color: AppColors.continerBackgroundColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur elit.",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Icon(Icons.check,
                                  color: Color.fromRGBO(25, 187, 51, 1))
                            ],
                          ),
                          Divider(),
                        ],
                      ),
                      addHeight(10.h),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur elit.",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Icon(Icons.check,
                                  color: Color.fromRGBO(25, 187, 51, 1))
                            ],
                          ),
                          Divider(),
                        ],
                      ),
                      addHeight(10.h),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur elit.",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Icon(Icons.check,
                                  color: Color.fromRGBO(25, 187, 51, 1))
                            ],
                          ),
                          Divider(),
                        ],
                      ),
                      addHeight(10.h),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur elit.",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Icon(Icons.check,
                                  color: Color.fromRGBO(25, 187, 51, 1))
                            ],
                          ),
                          Divider(),
                        ],
                      ),
                      addHeight(10.h),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur elit.",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Icon(Icons.check,
                                  color: Color.fromRGBO(25, 187, 51, 1))
                            ],
                          ),
                          Divider(),
                        ],
                      )
                    ],
                  ),
                ),
                addHeight(27.h),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Your Message",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                          color: Color.fromRGBO(17, 17, 21, 1))),
                ),
                addHeight(8.h),
                TextFormField(
                  maxLines: 4,
                  keyboardType: TextInputType.multiline,
                  controller: _messageController,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 15.sp),
                    hintText: 'Enter Something',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color:
                              Color.fromRGBO(224, 224, 224, 1)), //<-- SEE HERE
                    ),
                  ),
                  validator: MultiValidator(
                      [RequiredValidator(errorText: 'Please Enter')]),
                ),
                addHeight(40.h),
                CommonButton("Submit", () {
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                            addHeight(20.h),
                            Text(
                              "Your request has been submitted.",
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                  color: Color.fromRGBO(17, 17, 21, 1)),
                              textAlign: TextAlign.center,
                            ),
                            addHeight(16.h),
                            Text(
                              "You’ll receive an update in notification at +91245786954 on this mobile number",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            CommonButton("Done", () {})
                          ],
                        ),
                      ]);
                  // Get.toNamed(MyRouter.loginScreen);
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
