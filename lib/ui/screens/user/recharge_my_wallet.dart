import 'package:digitalastro/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/text_styles.dart';
import '../../../widgets/common_app_bar.dart';
import '../../../widgets/common_textfield.dart';

class RechargeWallet extends StatefulWidget {
  const RechargeWallet({super.key});

  @override
  State<RechargeWallet> createState() => _RechargeWalletState();
}

class _RechargeWalletState extends State<RechargeWallet> {
  List Prices = [
    "50",
    "100",
    "200",
    "500",
    "1000",
    "1200",
    "1500",
    "2000",
    "10000"
  ];
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: commonAppBarPanditji2("My Wallet"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    height: 150.h,
                    width: 396.w,
                    padding:
                        EdgeInsets.symmetric(horizontal: 115.w, vertical: 40.h),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color.fromRGBO(252, 212, 0, 1),
                          Color.fromRGBO(250, 148, 28, 1)
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(252, 212, 0, 0.1),
                          offset: Offset(0, 1),
                          blurRadius: 6,
                        ),
                      ],
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                          width: 1,
                          color: const Color.fromRGBO(252, 212, 0, 1)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.account_balance_wallet_outlined,
                          size: 27,
                        ),
                        addWidth(10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Wallet Balance",
                              style: AppTextStyles.size14WithW500,
                            ),
                            Row(
                              children: [
                                const Text("\u20B9"),
                                Text(
                                  "00.00",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 24.sp,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  addHeight(24.h),
                  Container(
                    height: 250.h,
                    width: 396.w,
                    child: GridView.builder(
                      itemCount: Prices.length,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 150,
                              childAspectRatio: 2,
                              mainAxisSpacing: 20),
                      itemBuilder: (BuildContext context, index) {
                        return FittedBox(
                          child: Container(
                            width: 119.w,
                            height: 70.h,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color.fromRGBO(182, 98, 0, 1),
                                    width: 1.w),
                                color: const Color.fromRGBO(255, 254, 246, 2),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: InkWell(
                              onTap: () {},
                              child: Center(
                                child: Text(
                                  "\u20B9" + Prices[index],
                                  style: TextStyle(
                                      color:
                                          const Color.fromRGBO(17, 17, 21, 1),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  addHeight(24.h),
                  CustomTextField2(
                    controller: _amountController,
                    hintText: "Enter Amount",
                    keyboardType: TextInputType.text,
                    validator: MultiValidator(
                        [RequiredValidator(errorText: 'Enter valid amount')]),
                  ),
                  addHeight(31.h),
                  CommonButton("Add Money", () {
                    if (_formKey.currentState!.validate()) {
                      // Get.toNamed(MyRouter.homeScreenPanditji);
                    }
                  })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
