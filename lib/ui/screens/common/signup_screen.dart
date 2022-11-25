import 'package:digitalastro/router/my_router.dart';
import 'package:digitalastro/widgets/common_button.dart';
import 'package:digitalastro/widgets/common_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../utils/colors.dart';
import '../../../utils/strings.dart';
import '../../../utils/text_styles.dart';
import '../../../widgets/common_widgets.dart';

class PanditOrUserArgument {
  final bool isPanditSelected;

  PanditOrUserArgument(this.isPanditSelected);
}

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _numberController = TextEditingController();
  final _emailController = TextEditingController();

  SizedBox addHeight(double size) => SizedBox(height: size.h);

  SizedBox addWidth(double size) => SizedBox(width: size.w);
  String mobileNumber = "";
  String countryCode = "";
  String fullName = "";
  String email = "";
  final String deviceToken = "for now its dummy";
  final int deviceType = 1;
  bool isComeFromPandit = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isComeFromPandit = Get.arguments[2];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LogoWelcome(),
                addHeight(40.h),
                Text(
                  "Sign Up",
                  style: AppTextStyles.size20WithW500,
                  textAlign: TextAlign.left,
                ),
                addHeight(40.h),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name*", style: AppTextStyles.size16WithW400),
                      addHeight(8.h),
                      CustomTextField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.name,
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'Enter your Name'),
                          MinLengthValidator(2, errorText: 'Name is required'),
                        ]),
                        controller: _nameController,
                        hintText: "Enter Name",
                        prefixChildIcon: const Icon(
                          Icons.person_outline_outlined,
                          color: Color(0xff7A7A7A),
                        ),
                      ),
                      addHeight(24.h),
                      Text("Mobile Number",
                          style: AppTextStyles.size16WithW400),
                      addHeight(8.h),
                      Container(
                        height: 70.h,
                        child: IntlPhoneField(
                          showCursor: true,
                          showCountryFlag: false,
                          disableLengthCheck: true,
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
                                      color: Color(0xffe0e0e0), width: 0.5)),
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  borderSide: BorderSide(
                                      color: Color(0xffe0e0e0), width: 0.5)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  borderSide: BorderSide(
                                      color: Color(0xffe0e0e0), width: 0.5)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  borderSide: BorderSide(
                                      color: Color(0xffe0e0e0), width: 0.5)),
                              // labelText: 'Mobile Number',
                              hintText: 'Mobile Number',
                              hintStyle: AppTextStyles.size16WithW400),
                          initialCountryCode: 'IN',
                          flagsButtonMargin: const EdgeInsets.only(left: 16),
                          pickerDialogStyle: PickerDialogStyle(
                            countryNameStyle: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            countryCodeStyle: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            padding: const EdgeInsets.all(8),
                            searchFieldPadding: const EdgeInsets.all(8),
                          ),
                          dropdownTextStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: AppColors.black,
                          ),
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
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
                      addHeight(24.h),

                      Text("Email ID(Optional)",
                          style: AppTextStyles.size16WithW400),
                      addHeight(8.h),
                      CustomTextField(
                        textInputAction: TextInputAction.next,
                        validator: MultiValidator([
                          EmailValidator(errorText: "Wrong Email "),
                        ]),
                        controller: _emailController,
                        hintText: "Enter your Email ID",
                        prefixChildIcon: const Icon(
                          Icons.email_outlined,
                          color: Color(0xff4E4E52),
                        ),
                      ),
                      // addHeight(20.h),
                    ],
                  ),
                ),
                addHeight(20.h),
                CommonButton("Continue", () async {
                  fullName = _nameController.text;
                  email = _emailController.text;
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    Get.toNamed(MyRouter.verifyOtpScreen, arguments: [
                      countryCode,
                      mobileNumber,
                      isComeFromPandit
                    ]);
                    //     countryCode: countryCode,
                    //     mobileNumber: mobileNumber,
                    //     fullName: fullName,

                    print("RESPONSE FORM SIGN UP SCREEN IS :::::::::::\nNAME"
                        " $fullName\nMobile $mobileNumber\ncountry code $countryCode\n Email Id   $email");
                    // if (!mounted) return;
                    // Navigator.pushNamed(
                    //   context,
                    //   OTPScreen.route,
                    //   arguments: OTPDetailsArguments(
                    //     mobileNumber: mobileNumber,
                    //     countryCode: countryCode,
                    //   ),
                    // );
                  }
                }),
                addHeight(8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Already have an account?",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: " Login",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                                fontFamily: 'Poppins',
                                color: AppColors.appPrimaryColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.back();
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                addHeight(40.h),
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
    );
  }
}
