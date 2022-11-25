import 'dart:io';

import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:digitalastro/widgets/common_button.dart';
import 'package:digitalastro/widgets/common_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../../../router/my_router.dart';
import '../../../theme/app_assets.dart';
import '../../../utils/colors.dart';
import '../../../utils/strings.dart';
import '../../../utils/text_styles.dart';

enum ImageSourceType { gallery, camera }

class PanditjiPersonalDetailsScreen extends StatefulWidget {
  PanditjiPersonalDetailsScreen({Key? key}) : super(key: key);

  @override
  _MyPickrState createState() => _MyPickrState();
}

class _MyPickrState extends State<PanditjiPersonalDetailsScreen> {
  File? imageFile;
  final _nameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _bioController = TextEditingController();
  TextEditingController dateInput = TextEditingController();

  String? _selectedGender;

  // PickedFile? imageFile = null;

  bool show = false;

  String dateInput11 = "";

  @override
  void initState() {
    // dateInput.text = "";
    dateInput.text = "";
    //set the initial value of text field
    super.initState();
  }

  bool? _value = true;
  String? newValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        appBar: commonAppBarPanditji1("Personal Details"),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                addHeight(10.h),
                Stack(
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(50),
                      elevation: 3,
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                            child: Image.asset(Ig.personMyAccount)),
                      ),
                    ),
                    Positioned(
                        right: 0,
                        bottom: 0,
                        child: GestureDetector(
                          onTap: () => pickImage(),
                          child: const CircleAvatar(
                              backgroundColor: AppColors.white,
                              radius: 12,
                              child: Icon(
                                Icons.camera_alt,
                                size: 14,
                                color: AppColors.textColor,
                              )),
                        ))
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    addHeight(10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Profile pic*",
                          style: AppTextStyles.size14WithW500,
                        ),
                        Text(
                          "*(png,jpg,jpeg only)",
                          style: AppTextStyles.size14WithW400,
                        ),
                      ],
                    )
                  ],
                ),
                addHeight(24.h),
                Container(
                    margin: EdgeInsets.only(top: 1.h),
                    child: Form(
                      key: _formKey,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name *",
                              style: AppTextStyles.size14WithW500,
                            ),
                            addHeight(10.h),
                            updateProfileTextFields(
                              // initialValue: "Your Name",

                              // prefixChildIcon:  Icon (Icons.person_pin),
                              controller: _nameController,
                              hintText: "Name",

                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: "Please Enter Name"),
                                MinLengthValidator(2,
                                    errorText: "Name is Required")
                              ]),
                            ),
                            addHeight(10.h),
                            Text(
                              "Location *",
                              style: AppTextStyles.size14WithW500,
                            ),
                            addHeight(10.h),

                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18.h),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.borderColor),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30))),
                              child: DropdownButton<String>(
                                underline: const SizedBox(),
                                enableFeedback: true,
                                // itemHeight: 60.h,
                                menuMaxHeight: 320.h,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
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
                                    newValue = value;
                                    print(newValue);
                                  });
                                },
                                value: newValue,
                                hint: Text(
                                  'pune',
                                  style: AppTextStyles.size18WithW500,
                                ),
                              ),
                            ),
                            addHeight(10.h),
                            Text(
                              "Gender *",
                              style: AppTextStyles.size14WithW500,
                            ),
                            addHeight(10.h),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18.h),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.borderColor),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30))),
                              child: DropdownButton<String>(
                                underline: const SizedBox(),
                                enableFeedback: true,
                                // itemHeight: 60.h,
                                menuMaxHeight: 320.h,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                hint: Text(
                                  "Gender",
                                  style: AppTextStyles.size18WithW500,
                                ),
                                isExpanded: true,
                                items: <String>['Male', 'Female ', 'Others']
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _selectedGender = value;
                                    print(_selectedGender);
                                  });
                                },
                                value: _selectedGender,
                              ),
                            ),
                            addHeight(10.h),
                            Text(
                              "Date of Birth *",
                              style: AppTextStyles.size14WithW500,
                            ),
                            addHeight(10.h),

                            ///Date of birth
                            TextField(
                              controller: dateInput,
                              //editing controller of this TextField
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
                                  errorStyle: const TextStyle(
                                    color: Colors.red,
                                  ),
                                  hintText: 'Date of Birth',
                                  hintStyle: const TextStyle(
                                    color: AppColors.textColor,
                                  ),
                                  // filled: true,
                                  // fillColor: Colors.white60,
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 15),
                                  prefixIcon: const Icon(
                                    Icons.calendar_today_rounded,
                                    color: Colors.grey,
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
                                      DateFormat.yMMMMd('en_US')
                                          .format(_selectedDate);
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
                            addHeight(10.h),
                            Text(
                              "About/Bio",
                              style: AppTextStyles.size14WithW500,
                            ),
                            addHeight(10.h),
                            SizedBox(
                              height: 100.h,
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
                              ),
                            ),
                            addHeight(10.h),
                            Text(
                              "Qualification(if any)",
                              style: TextStyle(fontSize: 14.sp),
                            ),
                            addHeight(10.h),
                            SizedBox(
                              height: 70.h,
                              child: CustomTextField(
                                controller: _nameController,
                                hintText: " ",
                              ),
                            ),
                            addHeight(10.h),
                            Text(
                              "Add Qualification Certification (if any)",
                              style: TextStyle(fontSize: 14.sp),
                            ),
                            addHeight(10.h),
                            Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: AppColors.borderColor),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30))),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () async {
                                      pickImage();
                                    },
                                    child: Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color:
                                                    AppColors.appPrimaryColor),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(30))),
                                        child: const Text("Choose File")),
                                  ),
                                  const Text("No file choosen"),
                                ],
                              ),
                            )
                          ]),
                    )),
                addHeight(20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Checkbox(
                      activeColor: AppColors.appPrimaryColor,
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                    addWidth(1.w),
                    Expanded(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: AppStrings.byClickingIAcceptThe,
                          style: AppTextStyles.size14WithW500,
                          children: <TextSpan>[
                            TextSpan(
                              text: AppStrings.termsConditions,
                              style: AppTextStyles.size14WithW500,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => print('click'),
                            ),
                            TextSpan(
                              text: AppStrings.and,
                              style: AppTextStyles.size14WithW500,
                            ),
                            TextSpan(
                              text: AppStrings.privacyPolicy,
                              style: AppTextStyles.size14WithW500,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => print('click'),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                addHeight(20.h),
                CommonButton("Save", () {
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
        ));
  }

  Container datePickerk() {
    return Container(
      height: 200,
      child: CupertinoDatePicker(
        mode: CupertinoDatePickerMode.date,
        initialDateTime: DateTime(1969, 1, 1),
        onDateTimeChanged: (DateTime newDateTime) {
          // Do something
        },
      ),
    );
  }

  imageFromGallery() async {
    PickedFile? pickedFile = await ImagePicker()
        .getImage(source: ImageSource.gallery, maxHeight: 200, maxWidth: 200);
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  imageFromCamera() async {
    PickedFile? pickedFile = await ImagePicker()
        .getImage(source: ImageSource.camera, maxHeight: 200, maxWidth: 200);
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemporary = File(image.path);

      final bytes = File(image.path).readAsBytesSync();
      // String base64Image = base64Encode(bytes);
      // setState(() => _profileController.image = imageTemporary);
    } on PlatformException catch (e) {
      debugPrint('Failed to pic image: $e');
    }
  }
}
