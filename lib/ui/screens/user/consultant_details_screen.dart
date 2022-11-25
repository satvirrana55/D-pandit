import 'dart:io';

import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:readmore/readmore.dart';

import '../../../router/my_router.dart';
import '../../../theme/app_assets.dart';
import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';
import '../../../widgets/common_button.dart';

enum ImageSourceType { gallery, camera }

class ConsultantDetailsScreen extends StatefulWidget {
  const ConsultantDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ConsultantDetailsScreen> createState() =>
      _ConsultantDetailsScreenState();
}

class _ConsultantDetailsScreenState extends State<ConsultantDetailsScreen> {
  late String stateValue;
  TextEditingController dateInput = TextEditingController();

  List gender = ["Male", "Female", "Other"];
  String? selectedGender;

  PickedFile? imageFile = null;

  bool show = false;

  final ImagePicker _imagePicker = ImagePicker();
  var _image;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
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
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(Ig.counsultantDetailsAppbar),
                                fit: BoxFit.cover)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.all(10.h),
                              height: 20,
                              alignment: Alignment.topLeft,
                              child: const Icon(Icons.arrow_back,
                                  color: Colors.white),
                            ),
                            Container(
                                height: 40,
                                width: 40,
                                margin: const EdgeInsets.only(right: 20),
                                child: Image.asset(Ig.shareIcon))
                          ],
                        )),
                    Positioned(
                        child: Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 80.h),
                        child: Stack(
                          children: [
                            Material(
                              borderRadius: BorderRadius.circular(100),
                              elevation: 3,
                              child: SizedBox(
                                height: 120.h,
                                width: 120.w,
                                child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50)),
                                    child: Image.asset(
                                      Ig.personMyAccount,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                            const Positioned(
                                right: 0,
                                bottom: 10,
                                child: CircleAvatar(
                                  backgroundColor: Color(0xff19BB33),
                                  radius: 10,
                                ))
                          ],
                        ),
                      ),
                    )),
                  ],
                ),
                addHeight(10.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Astro Dheeraj",
                      style: AppTextStyles.size20WithW500,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("4.5"),
                        Icon(
                          Icons.star,
                          color: const Color(0xffFCD400),
                          size: 18.h,
                        )
                      ],
                    )
                  ],
                ),
                addHeight(20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  offset: const Offset(0, 1),
                                  blurRadius: 6,
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: AppColors.continerBackgroundColor,
                            ),
                            // height: 105.h,
                            width: 125.w,
                            child: Column(
                              children: [
                                Container(
                                  height: 24.h,
                                  width: 24,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(Ig.languageIcon),
                                          fit: BoxFit.cover)),
                                ),
                                addHeight(8.h),
                                Wrap(
                                  children: [
                                    Text(
                                      "Hindi",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Text(", "),
                                    Text(
                                      "English",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Text(", "),
                                    Text(
                                      "Marathi",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  offset: const Offset(0, 1),
                                  blurRadius: 6,
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: AppColors.continerBackgroundColor,
                            ),
                            height: 101.h,
                            width: 125.w,
                            child: Column(
                              children: [
                                Container(
                                  height: 24.h,
                                  width: 24,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(Ig.certificateIcon),
                                          fit: BoxFit.cover)),
                                ),
                                addHeight(10.h),
                                const Text("10 Years")
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  offset: const Offset(0, 1),
                                  blurRadius: 6,
                                ),
                              ],
                              color: AppColors.continerBackgroundColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            padding: EdgeInsets.all(10),
                            height: 101.h,
                            width: 125.w,
                            child: Column(
                              children: [
                                Container(
                                  height: 24.h,
                                  width: 24,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(Ig.poojaCulusIcon),
                                          fit: BoxFit.cover)),
                                ),
                                addHeight(10.h),
                                const Text("50 Poojs's")
                              ],
                            ),
                          ),
                        ],
                      ),
                      addHeight(40.h),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Pooja Experties",
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w600),
                        ),
                      ),
                      addHeight(20.h),
                      Container(
                        width: 396.w,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 15.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              offset: const Offset(0, 1),
                              blurRadius: 6,
                            ),
                          ],
                          color: AppColors.continerBackgroundColor,
                        ),
                        child: Wrap(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              padding: EdgeInsets.all(8.h),
                              height: 41.h,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFF8F8),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  border: Border.all(
                                      color: Colors.grey, width: (1))),
                              child: FittedBox(
                                child: Text(
                                  "Vastu Expert",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.sp),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(5),
                              padding: EdgeInsets.all(8.h),
                              height: 41.h,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFF8F8),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  border: Border.all(
                                      color: Colors.grey, width: (1))),
                              child: FittedBox(
                                child: Text(
                                  "Ganesh Pooja",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.sp),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(5),
                              padding: EdgeInsets.all(8.h),
                              height: 41.h,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFF8F8),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  border: Border.all(
                                      color: Colors.grey, width: (1))),
                              child: FittedBox(
                                child: Text(
                                  "Vastu Expert",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.sp),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(5),
                              padding: EdgeInsets.all(8.h),
                              height: 41.h,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFF8F8),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  border: Border.all(
                                      color: Colors.grey, width: (1))),
                              child: FittedBox(
                                child: Text(
                                  "Vastu Expert",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.sp),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(5),
                              padding: EdgeInsets.all(8.h),
                              height: 41.h,
                              decoration: BoxDecoration(
                                  color: Color(0xffFFF8F8),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  border: Border.all(
                                      color: Colors.grey, width: (1))),
                              child: FittedBox(
                                child: Text(
                                  "Vastu Expert",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.sp),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      addHeight(16.h),
                      Container(
                        width: 396.w,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 15.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              offset: const Offset(0, 1),
                              blurRadius: 6,
                            ),
                          ],
                          color: AppColors.continerBackgroundColor,
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Pooja Experties",
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            addHeight(16.h),
                            Row(
                              children: [
                                Container(
                                  height: 75,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(Ig.maaKaliImg))),
                                ),
                                addWidth(20.w),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Akhand Ramayan (Musical)",
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    addHeight(5.h),
                                    Row(
                                      children: [
                                        Text(
                                          "Catogary :",
                                          style: AppTextStyles.size14WithW400,
                                        ),
                                        Text(
                                          " Online Pooja",
                                          style: AppTextStyles.size14WithW400,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            addHeight(26.h),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "About Pandit Ji",
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            addHeight(20.h),
                            ReadMoreText(
                              "Lorem ipsum dolor sit amet, consecrated advising elite. Cum ac nil penalties vestibule fugit. Purus solicitude quits accompany gestes diagnosis vivre sed. Ut libero suspense dictum sit mi mains in et. Curses leo deque hindered non purus dui Critique dolor Critique...",
                              trimLines: 4,
                              style: AppTextStyles.size14WithW400,
                              lessStyle: const TextStyle(
                                  color: AppColors.appPrimaryColor),
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'Read More',
                              trimExpandedText: 'Show less',
                              moreStyle: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.appPrimaryColor),
                            ),
                          ],
                        ),
                      ),
                      addHeight(30.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Pooja Price: ",
                            style: AppTextStyles.size16WithW500,
                          ),
                          Text(
                            "INR 1500",
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      addHeight(20.h),
                      CommonButton("Book Now", () {
                        Get.toNamed(MyRouter.bookingPanditJiOnlineScreen);
                        print("clicked Book now");
                      }),
                    ],
                  ),
                )
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
}
