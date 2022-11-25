import 'package:digitalastro/theme/app_assets.dart';
import 'package:digitalastro/utils/colors.dart';
import 'package:digitalastro/utils/helper_widgets.dart';
import 'package:digitalastro/utils/text_styles.dart';
import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:digitalastro/widgets/common_button.dart';
import 'package:digitalastro/widgets/common_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:readmore/readmore.dart';

import '../../../router/my_router.dart';

class SpecialPoojaRequest extends StatefulWidget {
  const SpecialPoojaRequest({super.key});

  @override
  State<SpecialPoojaRequest> createState() => _SpecialPoojaRequestState();
}

class _SpecialPoojaRequestState extends State<SpecialPoojaRequest> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  TextEditingController _messageController = TextEditingController();
  TextEditingController dateInput = TextEditingController();

  String dateInput11 = "";

  @override
  void initState() {
    // dateInput.text = "";
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBarPanditji2("On Request Special Pooja"),
      backgroundColor: const Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addHeight(16.h),
                Container(
                  height: 200.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Ig.ganeshji2), fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12.h),
                  child: ReadMoreText(
                    "Akhand Ramayan Path is performed to achieve peace and prosperity at the home and get blessings of Shri Ram and Hanuman. This can be performed at any auspicious event like Wedding. Akhand Ramayan Path is performed to achieve peace and prosperity at the home and get blessings of Shri Ram and Hanuman.",
                    trimLines: 4,
                    style: AppTextStyles.size14WithW400,
                    lessStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read More',
                    trimExpandedText: ' Show less',
                    moreStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                addHeight(33.h),
                Text(
                  "Contact Details:",
                  style: AppTextStyles.size18WithW600,
                ),
                addHeight(16.h),
                Text("Name", style: AppTextStyles.size14WithW400darkblack),
                addHeight(8.h),
                CustomTextField2(
                  controller: _nameController,
                  hintText: "Enter Your Name",
                  keyboardType: TextInputType.text,
                  validator: MultiValidator(
                      [RequiredValidator(errorText: 'Please enter your name')]),
                ),
                addHeight(16.h),
                Text("Email ID", style: AppTextStyles.size14WithW400darkblack),
                addHeight(8.h),
                CustomTextField2(
                  controller: _emailController,
                  hintText: "Enter Your Email",
                  keyboardType: TextInputType.text,
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'Please enter your Email')
                  ]),
                ),
                addHeight(16.h),
                Text("Mobile Number",
                    style: AppTextStyles.size14WithW400darkblack),
                addHeight(8.h),
                IntlPhoneField(
                  controller: _phoneController,
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                    hintText: 'Mobile Number',
                    hintStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        borderSide: BorderSide(
                          color: Color(0xff7A7A7A),
                        )),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        borderSide: BorderSide(
                          color: Colors.red,
                        )),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        borderSide:
                            BorderSide(color: Color(0xff7A7A7A), width: (0.4))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        borderSide:
                            BorderSide(color: Color(0xff7A7A7A), width: (0.4))),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff7A7A7A), width: (0.4))),
                  ),
                  initialCountryCode: 'IN',
                  dropdownIconPosition: IconPosition.trailing,
                  dropdownIcon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black,
                  ),
                  flagsButtonMargin: const EdgeInsets.only(left: 10),
                  disableLengthCheck: true,
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
                addHeight(16.h),
                Text("Date",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        color: Colors.black)),
                addHeight(8.h),
                TextField(
                  controller: dateInput,
                  //editing controller of this TextField
                  decoration: InputDecoration(
                      hintText: 'Select Date',
                      hintStyle: TextStyle(color: Colors.black),
                      filled: true,
                      fillColor: const Color(0xffF5F5F5),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 15),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.outlineColor),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.outlineColor),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              // color: AppTheme.primaryColor,
                              width: 3.0),
                          borderRadius: BorderRadius.circular(30)),
                      prefixIcon: Icon(
                        Icons.calendar_today_rounded,
                        color: AppColors.black,
                        size: 18,
                      )),
                  readOnly: true,
                  //set it true, so that user will not able to edit text
                  onTap: () async {
                    DateTime? _selectedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2101));

                    if (_selectedDate != null) {
                      // print(_selectedDate);
                      dateInput11 = _selectedDate.toString();
                      print(dateInput11);
                      String formattedDate =
                          DateFormat.yMMMMd('en_US').format(_selectedDate);
                      // print(formattedDate);
                      setState(() {
                        dateInput.text =
                            formattedDate; //set output date to TextField value.
                      });
                    } else {
                      print("Date is not selected");
                    }
                  },
                ),
                addHeight(16.h),
                Text("Your Message",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        color: Colors.black)),
                addHeight(8.h),
                TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    fillColor: const Color(0xffF5F5F5),
                    labelStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: MediaQuery.of(context).size.width * 0.040,
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(167, 167, 167, 1),
                        )),
                    errorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        borderSide: BorderSide(
                          color: Colors.red,
                        )),
                    disabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        borderSide:
                            BorderSide(color: Color(0xff7A7A7A), width: (0.4))),
                    focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        borderSide:
                            BorderSide(color: Color(0xff7A7A7A), width: (0.4))),
                    border: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff7A7A7A), width: (0.4))),
                    hintText: "Enter Something...",
                    hintStyle: TextStyle(
                      color: const Color(0xff7A7A7A),
                      fontSize: MediaQuery.of(context).size.width * 0.040,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                addHeight(16.h),
                Text("Select Pooja Mode",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        color: Colors.black)),
                addHeight(8.h),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40.h,
                        // width: 10.w,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(30)),
                            border: Border.all(
                                color: AppColors.darkBlue, width: (1))),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            "Online",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColors.darkBlue,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Container(
                        height: 40.h,
                        // width: 10.w,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(30)),
                            border: Border.all(
                                color: AppColors.appPrimaryColor, width: (1))),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            "Offline",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColors.appPrimaryColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                addHeight(41.h),
                CommonButton("Submit", () {
                  if (_formKey.currentState!.validate()) {
                    // _formKey.currentState?.save();
                    Get.toNamed(MyRouter.panditJiPoojaDetailsScreen);
                  } else {
                    print("Condition not satisfied");
                  }
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
