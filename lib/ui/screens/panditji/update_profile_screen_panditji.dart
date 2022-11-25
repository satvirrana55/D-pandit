import 'dart:io';

import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:digitalastro/widgets/common_button.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../../../router/my_router.dart';
import '../../../theme/app_assets.dart';
import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';
import '../../../widgets/common_textfield.dart';

enum ImageSourceType { gallery, camera }

class UpdateProfilePanditJiScreen extends StatefulWidget {
  const UpdateProfilePanditJiScreen({Key? key}) : super(key: key);

  @override
  State<UpdateProfilePanditJiScreen> createState() =>
      _UpdateProfilePanditJiScreenState();
}

class _UpdateProfilePanditJiScreenState
    extends State<UpdateProfilePanditJiScreen> {
  final _nameController = TextEditingController();
  final _INR = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _bioController = TextEditingController();
  late String stateValue;
  TextEditingController dateInput = TextEditingController();

  List gender = ["Male", "Female", "Other"];
  String? _selectCity;
  String? _selectSpecialization;
  String? selectedGender;

  PickedFile? imageFile = null;

  bool show = false;

  final ImagePicker _imagePicker = ImagePicker();
  var _image;
  String? newValue;
  String dateInput11 = "";

  @override
  void initState() {
    // dateInput.text = "";
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  final _locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: 20.h),
                        alignment: Alignment.topCenter,
                        height: 157.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(Ig.updateProfileImg),
                                fit: BoxFit.cover)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.all(10.h),
                              height: 20,
                              alignment: Alignment.topLeft,
                              child:
                                  Icon(Icons.arrow_back, color: Colors.black),
                            ),
                            addWidth(MediaQuery.of(context).size.width / 3),
                            Text(
                              "Update Profile",
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.w600),
                            )
                          ],
                        )),
                    Positioned(
                        child: Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 70),
                        child: Stack(
                          children: [
                            Material(
                              borderRadius: BorderRadius.circular(70),
                              elevation: 3,
                              child: Container(
                                height: screenSize.width * 0.30,
                                width: screenSize.width * 0.30,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(70)),
                                    border: Border.all(
                                        color: Colors.orange, width: 2)),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(70)),
                                  child: (_image?.path == null)
                                      ? SizedBox()
                                      // ? Image.network(
                                      //     _profileController
                                      //         .model.value.data!.profileImage
                                      //         .toString(),
                                      //   )
                                      : Image.file(
                                          File(_image!.path),
                                        ),
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 2,
                                right: -0,
                                child: GestureDetector(
                                  onTap: () => showImageOptions(),
                                  child: Container(
                                    height: 50,
                                    width: 40,
                                    // backgroundColor: AppTheme.loginLabelColor,
                                    // radius: 12,
                                    child: CircleAvatar(
                                        backgroundColor: Colors.grey,
                                        radius: 10,
                                        child: Icon(
                                          Icons.camera_alt_outlined,
                                          size: 16,
                                          color: Colors.white,
                                        )),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    )),
                  ],
                ),
                addHeight(10.h),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Container(
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
                              CustomTextField(
                                //prefixChildIcon: const Icon(Icons.person_pin),
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
                                "City*",
                                style: AppTextStyles.size14WithW500,
                              ),
                              addHeight(10.h),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 18.h),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: AppColors.borderColor),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30))),
                                child: DropdownButton<String>(
                                  underline: const SizedBox(),
                                  enableFeedback: true,
                                  // itemHeight: 60.h,
                                  menuMaxHeight: 320.h,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
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
                                      _selectCity = value;
                                      print(_selectCity);
                                    });
                                  },
                                  value: _selectCity,
                                  hint: Text('pune'),
                                ),
                              ),
                              addHeight(10.h),
                              Text(
                                "Location *",
                                style: AppTextStyles.size14WithW500,
                              ),
                              addHeight(10.h),
                              CustomTextField(
                                //prefixChildIcon: const Icon(Icons.person_pin),
                                controller: _locationController,
                                hintText: "Chakan",
                                validator: MultiValidator([
                                  RequiredValidator(
                                      errorText: "Please Enter Location"),
                                  MinLengthValidator(2,
                                      errorText: "Location is Required")
                                ]),
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
                                "Specialization *",
                                style: AppTextStyles.size14WithW500,
                              ),
                              addHeight(10.h),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 18.h),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: AppColors.borderColor),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30))),
                                child: DropdownButton<String>(
                                  underline: const SizedBox(),
                                  enableFeedback: true,
                                  // itemHeight: 60.h,
                                  menuMaxHeight: 320.h,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                  hint: const Text("vedic"),
                                  isExpanded: true,
                                  items: <String>["vedic", "vedic2", "Vedic3"]
                                      .map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      _selectSpecialization = value;
                                      print(_selectSpecialization);
                                    });
                                  },
                                  value: _selectSpecialization,
                                ),
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
                                  decoration: const InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                        )),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                        )),
                                    disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                        )),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                        )),
                                  ),
                                  minLines: 3,
                                  maxLines: 10,
                                ),
                              ),
                              addHeight(10.h),

                              ///Gender
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    ' Gender',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Row(
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      addRadioButton(0, 'Male'),
                                      addRadioButton(1, 'Female'),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Consultation Charge per minute : ',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                  addHeight(50.h),
                                  CustomTextField(
                                    //prefixChildIcon: const Icon(Icons.person_pin),
                                    controller: _INR,
                                    hintText: "150 INR",
                                    validator: MultiValidator([
                                      RequiredValidator(
                                          errorText: "Please Enter Amount"),
                                      MinLengthValidator(2,
                                          errorText: "Amount is Required")
                                    ]),
                                  ),
                                ],
                              ),
                            ]),
                      )),
                ),
                addHeight(20.h),
                addHeight(20.h),
                CommonButton("Save", () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                    Get.back();
                  }
                })
              ],
            ),
          ),
        ));
  }

  showImageOptions() {
    showModalBottomSheet(
        context: context,
        builder: (context) => SizedBox(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Select Type",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.normal),
                    ),
                    TextButton(
                      onPressed: () {
                        _PickImage(context, ImageSourceType.camera);
                      },
                      child: const Text(
                        'Camera',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        _PickImage(context, ImageSourceType.gallery);
                      },
                      child: const Text(
                        'Gallery',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }

  void _PickImage(BuildContext context, var type) async {
    var source = type == ImageSourceType.camera
        ? ImageSource.camera
        : ImageSource.gallery;
    XFile? image = await _imagePicker.pickImage(
        source: source,
        imageQuality: 50,
        preferredCameraDevice: CameraDevice.front);
    setState(() {
      _image = File(image?.path ?? "");
      Navigator.of(context).pop();
    });
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

  Row addRadioButton(int btnValue, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio<String>(
          activeColor: Theme.of(context).primaryColor,
          value: gender[btnValue],
          groupValue: selectedGender,
          onChanged: (value) {
            setState(() {
              print(value);
              selectedGender = value;
            });
          },
        ),
        Text(title)
      ],
    );
  }
}
