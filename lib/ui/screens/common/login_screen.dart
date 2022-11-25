import 'package:digitalastro/widgets/common_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../router/my_router.dart';
import '../../../utils/colors.dart';
import '../../../utils/strings.dart';
import '../../../utils/text_styles.dart';
import '../../../widgets/common_widgets.dart';

class PanditOrUserArgument {
  final bool isPanditSelected;

  PanditOrUserArgument(this.isPanditSelected);
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  SizedBox addHeight(double size) => SizedBox(height: size.h);

  SizedBox addWidth(double size) => SizedBox(width: size.w);
  String mobileNumber = "";
  String countryCode = "";
  bool isComeFromPandit = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isComeFromPandit = Get.arguments[0];
  }

  @override
  Widget build(BuildContext context) {
    //   final args = ModalRoute.of(context)!.settings.arguments as List<PanditOrUserArgument>;

    // print("ISCOME FROM PANDIT LOGIN:::: ${args.first.isPanditSelected}");

    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: Padding(
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
                  LogoWelcome(),
                  addHeight(20.h),
                  Text(
                    "Login",
                    style: AppTextStyles.size20WithW500,
                  ),
                  addHeight(24.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Please Login with phone number",
                        style: AppTextStyles.size14WithW400),
                  ),
                  addHeight(48.h),
                  Text(
                    "Mobile Number",
                    style: AppTextStyles.size16WithW400,
                  ),
                  addHeight(16.h),
                  Form(
                    key: _formKey,
                    child: Container(
                      height: 90.h,
                      child: IntlPhoneField(
                        showCursor: true,
                        showCountryFlag: false,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        showDropdownIcon: true,
                        onSaved: (number) {
                          countryCode = number!.countryCode;
                          mobileNumber = number.number;
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                borderSide: BorderSide(
                                    color: Color(0xffe0e0e0), width: (1))),
                            disabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                borderSide: BorderSide(
                                    color: Color(0xffe0e0e0), width: (1))),
                            focusedBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                borderSide: BorderSide(
                                    color: Color(0xffe0e0e0), width: (1))),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                borderSide: BorderSide(
                                    color: AppColors.red, width: (1))),
                            border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                borderSide: BorderSide(
                                    color: Color(0xffe0e0e0), width: (1))),
                            hintText: 'Mobile Number',
                            hintStyle: AppTextStyles.size16WithW400),
                        initialCountryCode: 'IN',
                        flagsButtonMargin: const EdgeInsets.only(left: 16),
                        pickerDialogStyle: PickerDialogStyle(
                          countryNameStyle: GoogleFonts.poppins(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                          countryCodeStyle: GoogleFonts.poppins(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                          padding: const EdgeInsets.all(8),
                          searchFieldPadding: const EdgeInsets.all(8),
                        ),
                        dropdownTextStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: AppColors.black,
                        ),
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                          color: AppColors.black,
                        ),
                        dropdownIcon: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 24,
                          color: AppColors.pureBlackColor,
                        ),
                        dropdownIconPosition: IconPosition.trailing,
                      ),
                    ),
                  ),
                  addHeight(30.h),
                  CommonButton("Continue", () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      //   Get.to(OTPScreenPandit(isComeFromPandit: widget.isComeFromPandit,));
                      // Get.toNamed(MyRouter.verifyOtpScreen,
                      // arguments: OTPDetailsArguments(
                      //     countryCode: countryCode,
                      //     mobileNumber: mobileNumber,
                      //     fullName: '',
                      //     email: ''),
                      // );
                      //
                      Get.toNamed(MyRouter.verifyOtpScreen, arguments: [
                        countryCode,
                        mobileNumber,
                        isComeFromPandit
                      ]);
                    }
                  }),
                  addHeight(16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "Don't have an account?",
                          style: AppTextStyles.size14WithW400,
                          children: <TextSpan>[
                            TextSpan(
                              text: " SIGN UP",
                              style: TextStyle(
                                  color: AppColors.appPrimaryColor,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.toNamed(MyRouter.signUpScreen,
                                      arguments: [
                                        countryCode,
                                        mobileNumber,
                                        isComeFromPandit
                                      ]);
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: AppStrings.byClickingIAcceptThe,
                        style: AppTextStyles.size14WithW400,
                        children: <TextSpan>[
                          TextSpan(
                            text: AppStrings.termsConditions,
                            style: AppTextStyles.size14WithW500darkblack,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => print('click'),
                          ),
                          TextSpan(
                            text: AppStrings.and,
                            style: AppTextStyles.size14WithW500,
                          ),
                          TextSpan(
                            text: AppStrings.privacyPolicy,
                            style: AppTextStyles.size14WithW500darkblack,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => print('click'),
                          ),
                        ],
                      ),
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
