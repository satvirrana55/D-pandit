import 'dart:io';

import 'package:digitalastro/utils/colors.dart';
import 'package:digitalastro/utils/text_styles.dart';
import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:digitalastro/widgets/common_button.dart';
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
import '../../../widgets/common_textfield.dart';

enum ImageSourceType { gallery, camera }

class UpdateProfileUserScreen extends StatefulWidget {
  const UpdateProfileUserScreen({Key? key}) : super(key: key);

  @override
  State<UpdateProfileUserScreen> createState() =>
      _UpdateProfilePanditJiScreenState();
}

class _UpdateProfilePanditJiScreenState extends State<UpdateProfileUserScreen> {
  final _nameController = TextEditingController(text: "Rakhi Mehra");
  final _phoneController = TextEditingController(text: "+91 8645986534");
  final _emailController = TextEditingController(text: "rakhimishra@gmail.com");

  final _INR = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _bioController = TextEditingController();
  late String stateValue;
  TextEditingController _dateInputController =
      TextEditingController(text: "11 August 2000");

  List gender = ["Male", "Female", "Other"];
  String? selectedGender;

  PickedFile? imageFile = null;

  bool show = true;

  final ImagePicker _imagePicker = ImagePicker();
  var _image;

  String dateInput11 = "";

  @override
  // void initState() {
  //   // dateInput.text = "";
  //   _dateInputController.text = "";
  //   //set the initial value of text field
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
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
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(Ig.updateProfileImg),
                                fit: BoxFit.cover)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.all(10.h),
                              height: 20.h,
                              child:
                                  Icon(Icons.arrow_back, color: Colors.black),
                            ),
                            Container(
                              child: Text(
                                "Update Profile",
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10.h),
                              height: 20.h,
                              width: 30.w,
                            )
                          ],
                        )),
                    Positioned(
                        child: Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 80.h),
                        child: Stack(
                          children: [
                            Material(
                              borderRadius: BorderRadius.circular(70),
                              elevation: 0,
                              child: Container(
                                height: screenSize.width * 0.30,
                                width: screenSize.width * 0.30,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(70)),
                                    border: Border.all(
                                        color: AppColors.starYellowColor,
                                        width: 2.w),
                                    image: DecorationImage(
                                        image: AssetImage(Ig.panditjiHome2))),
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
                                right: 2,
                                child: GestureDetector(
                                  onTap: () => showImageOptions(),
                                  child: Container(
                                    height: 37.2.h,
                                    width: 37.2.h,
                                    // backgroundColor: AppTheme.loginLabelColor,
                                    // radius: 12,
                                    child: CircleAvatar(
                                        backgroundColor: AppColors.iconBlack,
                                        radius: 10,
                                        child: Icon(
                                          Icons.camera_alt,
                                          size: 20.sp,
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
                Padding(
                  padding: EdgeInsets.only(top: 22.h, left: 15.w, right: 15.w),
                  child: Container(
                      margin: EdgeInsets.only(top: 1.h),
                      child: Form(
                        key: _formKey,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name",
                                style: AppTextStyles.size14WithW400,
                              ),
                              addHeight(10.h),
                              CustomTextField2(
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
                                "Mobile Number",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.textColor),
                              ),
                              addHeight(10.h),
                              SizedBox(
                                  height: 70.h,
                                  child: CustomTextField2(
                                    controller: _phoneController,
                                  )),
                              addHeight(10.h),
                              Text(
                                "Email ID",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.textColor),
                              ),
                              addHeight(10.h),
                              SizedBox(
                                  height: 70.h,
                                  child: CustomTextField2(
                                    controller: _emailController,
                                  )),
                              Text(
                                "Birth Date",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.textColor),
                              ),
                              addHeight(10.h),

                              ///Date of birth
                              TextField(
                                controller: _dateInputController,
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
                                      color: Colors.black,
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
                                      _dateInputController.text =
                                          formattedDate; //set output date to TextField value.
                                    });
                                  } else {
                                    print("Date is not selected");
                                  }
                                },
                              ),
                              addHeight(10.h),

                              ///Gender
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    ' Gender',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: AppColors.textColor,
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
                                ],
                              ),
                            ]),
                      )),
                ),
                addHeight(20.h),
                addHeight(20.h),
                CommonButton(
                  "Save",
                  () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      Get.toNamed(MyRouter.homeScreenPanditji);
                    }
                  },
                ),
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
                          color: AppColors.outlineColor,
                          fontWeight: FontWeight.normal),
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
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
