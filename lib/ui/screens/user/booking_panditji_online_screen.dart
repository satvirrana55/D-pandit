import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:digitalastro/widgets/common_button.dart';
import 'package:digitalastro/widgets/common_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../router/my_router.dart';
import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';

class BookingPanditJiOnlineScreen extends StatefulWidget {
  const BookingPanditJiOnlineScreen({Key? key}) : super(key: key);

  @override
  State<BookingPanditJiOnlineScreen> createState() =>
      _BookingPanditJiOnlineScreenState();
}

class _BookingPanditJiOnlineScreenState
    extends State<BookingPanditJiOnlineScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _pincodeController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  String? _selectState;
  String? _dropdownvalue;
  var items = [
    "Uttar Pradesh",
    "Uttrakhand",
    "Haryana",
    "Punjab",
    "Delhi NCR",
    "Madhya Pradesh"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBarPanditji2("Information"),
      backgroundColor: Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name",
                style: AppTextStyles.size16WithW500,
              ),
              addHeight(12.h),
              CustomTextField(
                controller: _nameController,
                hintText: "Name",
                keyboardType: TextInputType.text,
                validator: MultiValidator(
                    [RequiredValidator(errorText: 'Please enter name')]),
              ),
              addHeight(24.h),
              Text(
                "Address:",
                style: AppTextStyles.size16WithW500,
              ),
              addHeight(16.h),
              Text(
                "City",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              addHeight(8.h),
              CustomTextField(
                controller: _cityController,
                hintText: "Pune",
                keyboardType: TextInputType.text,
                validator: MultiValidator(
                    [RequiredValidator(errorText: 'Please enter city name')]),
              ),
              addHeight(16.h),
              Text(
                "Pincode",
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
              ),
              addHeight(8.h),
              CustomTextField(
                controller: _pincodeController,
                hintText: "223  ",
                keyboardType: TextInputType.number,
                validator: MultiValidator(
                    [RequiredValidator(errorText: 'Please enter pin code')]),
              ),
              addHeight(16.h),
              Text(
                "Address",
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
              ),
              addHeight(8.h),
              CustomTextField(
                controller: _addressController,
                hintText: "1922 thorido sahar near by haweli resort",
                keyboardType: TextInputType.text,
                validator: MultiValidator(
                    [RequiredValidator(errorText: 'Please enter address')]),
              ),
              addHeight(16.h),
              Text(
                "State",
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
              ),
              addHeight(8.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18.h),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.borderColor),
                    borderRadius: const BorderRadius.all(Radius.circular(30))),
                child: DropdownButton<String>(
                  underline: const SizedBox(),
                  enableFeedback: true,
                  // itemHeight: 60.h,
                  menuMaxHeight: 320.h,
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  isExpanded: true,
                  items: <String>[
                    'Andhra Pradesh',
                    'Arunachal Pradesh',
                    'Assam',
                    'Bihar',
                    'Chhattisgarh',
                    'Goa',
                    'Gujarat',
                    'Haryana',
                    'Himachal Pradesh',
                    'Jharkhand',
                    'Karnataka',
                    'Kerala',
                    'Madhya Pradesh',
                    'Maharashtra',
                    'Manipur',
                    'Meghalaya',
                    'Mizoram',
                    'Nagaland',
                    'Odisha',
                    'Punjab',
                    'Rajasthan',
                    'Sikkim',
                    'Tamil Nadu',
                    'Telangana',
                    'Tripura',
                    'Uttar Pradesh',
                    'Uttarakhand',
                    'West Bengal',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectState = value;
                      print(_selectState);
                    });
                  },
                  value: _selectState,
                  hint: Text("Pune"),
                ),
              ),
              addHeight(16.h),
              Text(
                "Description",
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
              ),
              addHeight(8.h),
              TextFormField(
                maxLines: 3,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
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
                  hintStyle: TextStyle(
                    color: const Color(0xff7A7A7A),
                    fontSize: MediaQuery.of(context).size.width * 0.040,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              addHeight(26.h),
              CommonButton("Proceed", () {
                Get.toNamed(MyRouter.bookingPanditJiPayment);
              })
            ],
          ),
        ),
      ),
    );
  }
}
