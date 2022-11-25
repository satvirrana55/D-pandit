import 'dart:async';

import 'package:digitalastro/widgets/common_button.dart';
import 'package:digitalastro/widgets/common_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../router/my_router.dart';
import '../../../utils/colors.dart';
import '../../../utils/helper_widgets.dart';
import '../../../utils/text_styles.dart';

class OTPScreen extends StatefulWidget {
  static const String route = 'otp_screen';
  final arguments;

  const OTPScreen({
    Key? key,
    this.arguments,
  }) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  SizedBox addHeight(double size) => SizedBox(height: size.h);

  SizedBox addWidth(double size) => SizedBox(width: size.w);
  String currentText = "";
  final int type = 1;
  double progress = 0;
  int secondsRemaining = 60;
  bool enableResend = false;
  Timer? timer;
  String mobileNumber = "";
  String countryCode = "";
  bool isComeFromPandit = true;

  @override
  initState() {
    super.initState();
    countryCode = Get.arguments[0];
    mobileNumber = Get.arguments[1];
    isComeFromPandit = Get.arguments[2];

    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (secondsRemaining != 0) {
        setState(() {
          secondsRemaining--;
          var per = secondsRemaining / 100;
          var total = secondsRemaining / per;
          progress = per * total;
        });
      } else {
        setState(() {
          enableResend = true;
        });
      }
    });
  }

  int start = 60;
  var resendText = 'Resend OTP';

  @override
  dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                addHeight(20.h),
                LogoWelcome(),
                addHeight(48.h),
                Text(
                  "OTP Verification",
                  style: AppTextStyles.size20WithW500,
                ),
                addHeight(24.h),
                RichText(
                  text: TextSpan(
                    text:
                        "Enter 4-digit verification code sent to your phone number" +
                            countryCode +
                            "  " +
                            mobileNumber,
                    style: AppTextStyles.size14WithW400,
                    children: <TextSpan>[
                      TextSpan(
                        text: " Edit",
                        style: TextStyle(
                            color: Color(0xff111115), fontSize: 14.sp),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.back();
                          },
                      ),
                    ],
                  ),
                ),
                addHeight(64.h),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: PinCodeTextField(
                      animationCurve: Curves.bounceIn,

                      autoDismissKeyboard: true,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      appContext: context,
                      length: 4,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      autoFocus: true,
                      cursorColor: AppColors.primaryColor,
                      enabled: true,
                      errorTextSpace: 32,
                      validator: (v) {
                        if (v!.length < 4) {
                          return "4 digit OTP Required";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.number,
                      // textStyle:
                      //     AppTextStyles.textSize18With500WeightSecondaryBlack,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderWidth: .50,
                        disabledColor: AppColors.white,
                        errorBorderColor: AppColors.red,
                        activeColor: AppColors.borderColor,
                        inactiveFillColor: Colors.transparent,
                        selectedFillColor: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                        fieldHeight: 60.h,
                        fieldWidth: 70.w,
                        inactiveColor: AppColors.borderColor,
                        selectedColor: AppColors.borderColor,
                        activeFillColor: AppColors.white,
                      ),
                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,
                      useHapticFeedback: true,
                      // backgroundColor: Color(0xfff5f5f5),
                      onCompleted: (v) async {
                        setState(() {
                          currentText = v;
                        });
                        // bool res = await authController.verifyOTP(
                        //   {
                        //     "otp": currentText,
                        //     "type": type.toString(),
                        //     "mobileNumber": widget.arguments.mobileNumber,
                        //     "mobileTelCode": widget.arguments.countryCode,
                        //   },
                        // );
                      },
                      onChanged: (value) {
                        setState(() {
                          currentText = value;
                        });
                      },
                      beforeTextPaste: (text) {
                        return true;
                      },
                    ),
                  ),
                ),
                addHeight(30.h),
                CommonButton("Verify", () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    if (isComeFromPandit) {
                      Get.toNamed(MyRouter.panditjiPersonalDetailsScreen);
                    } else {
                      Get.toNamed(MyRouter.userHomeScreen);
                    }
                  }
                }),
                addHeight(16.h),
                Center(
                  child: GestureDetector(
                    onTap: start == 0
                        ? () {
                            showToast1("OTP Resend Successfully");
                            start = 30;
                          }
                        : null,
                    child: Text(
                      "Resend OTP available in $start" "s",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.size14WithW400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  showToast1(message) {
    Fluttertoast.cancel();
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColors.primaryColor,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
