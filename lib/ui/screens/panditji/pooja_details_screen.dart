import 'package:digitalastro/router/my_router.dart';
import 'package:digitalastro/theme/app_assets.dart';
import 'package:digitalastro/widgets/common_button.dart';
// import 'package:file_picker/file_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:material_dialogs/material_dialogs.dart';

import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';
import '../../../widgets/common_app_bar.dart';
import '../../../widgets/common_textfield.dart';

class PanditJiPoojaDetailsScreen extends StatefulWidget {
  const PanditJiPoojaDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PanditJiPoojaDetailsScreen> createState() =>
      _PanditJiPoojaDetailsScreenState();
}

class _PanditJiPoojaDetailsScreenState
    extends State<PanditJiPoojaDetailsScreen> {
  final _poojaChargesController = TextEditingController();
  final _poojaDescriptionController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var _poojaCategoryController;
  String? newValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: commonAppBarPanditji1("Pooja Details"),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  addHeight(20.h),
                  Text(
                    "Select Pooja Category",
                    style: AppTextStyles.size14WithW500,
                  ),
                  addHeight(10.h),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18.h),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.borderColor),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30))),
                    child: DropdownButton<String>(
                      underline: const SizedBox(),
                      enableFeedback: true,
                      // itemHeight: 60.h,
                      menuMaxHeight: 320.h,
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      hint: const Text("Pooja Category"),
                      isExpanded: true,
                      items: <String>[
                        'Free',
                        'paid ',
                        'Other',
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          newValue = value;
                        });
                      },
                      value: newValue,
                    ),
                  ),
                  addHeight(30.h),
                  Text(
                    "Pooja Description*",
                    style: AppTextStyles.size14WithW500,
                  ),
                  addHeight(10.h),
                  SizedBox(
                    // height: 100.h,
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            borderSide: BorderSide(
                              color: AppColors.borderColor,
                            )),
                        enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            borderSide: BorderSide(
                              color: AppColors.borderColor,
                            )),
                        disabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            borderSide: BorderSide(
                              color: AppColors.borderColor,
                            )),
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            borderSide: BorderSide(
                              color: AppColors.borderColor,
                            )),
                        errorBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30),
                            ),
                            borderSide: BorderSide(
                              color: Colors.red.withOpacity(0.5),
                            )),
                      ),
                      minLines: 3,
                      maxLines: 10,
                      validator: MultiValidator([
                        RequiredValidator(
                            errorText: "Please enter Pooja Description")
                      ]),
                    ),
                  ),
                  addHeight(30.h),
                  Text(
                    "Pooja Charges(if any)",
                    style: AppTextStyles.size14WithW500,
                  ),
                  addHeight(10.h),
                  SizedBox(
                    height: 70.h,
                    child: CustomTextField(
                      hintText: "INR 5000",
                      controller: _poojaChargesController,
                    ),
                  ),
                  addHeight(20.h),
                  Text(
                    "Pooja Photo",
                    style: AppTextStyles.size14WithW500,
                  ),
                  addHeight(10.h),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.borderColor),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30))),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () async {
                            // FilePickerResult? result =
                            //     await FilePicker.platform.pickFiles();

                            // if (result != null) {
                            //   // File file = File(result.files.single.path);
                            // }
                            // else {
                            //   print("No file selected");
                            // }
                          },
                          child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors.appPrimaryColor),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30))),
                              child: const Text("Choose File")),
                        ),
                        const Text("No file chosen")
                      ],
                    ),
                  ),
                  addHeight(40.h),
                  CommonButton("Submit", () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      Dialogs.materialDialog(
                          dialogWidth: 396,
                          onClose: (value) {
                            Get.toNamed(MyRouter.homeScreenPanditji);
                          },
                          color: Colors.white,
                          context: context,
                          actions: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Container(
                                        height: 56.h,
                                        width: 56.w,
                                        child: Image.asset(
                                          Ig.rightclickArrow,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                addHeight(27.h),
                                Text(
                                  "Registration Successfully",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                addHeight(24.h),
                                Text(
                                  "Thank you for the registration. Our  team shortly get back to you ",
                                  style: AppTextStyles.size14WithW500,
                                  textAlign: TextAlign.center,
                                ),
                                addHeight(26.h),
                                RichText(
                                  text: TextSpan(
                                    text:
                                        "You can reach out to us for astrologers onboarding support team at",
                                    style: const TextStyle(
                                        fontSize: 10, color: Colors.black),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "  support@astropanditom.com",
                                        style: const TextStyle(
                                          fontSize: 10,
                                          color: Colors.blue,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () => print('click'),
                                      ),
                                      const TextSpan(
                                          text:
                                              " in case of any issue or query  ")
                                    ],
                                  ),
                                ),
                                CommonButton("Okay", () {
                                  Get.toNamed(MyRouter.homeScreenPanditji);
                                })
                              ],
                            ),
                          ]);
                    }
                    // Get.toNamed(MyRouter.loginScreen);
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
