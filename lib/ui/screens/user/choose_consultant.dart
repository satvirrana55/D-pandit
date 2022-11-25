import 'package:digitalastro/utils/colors.dart';
import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../router/my_router.dart';
import '../../../theme/app_assets.dart';
import '../../../utils/text_styles.dart';

class ChooseConsultantScreen extends StatefulWidget {
  const ChooseConsultantScreen({Key? key}) : super(key: key);

  @override
  State<ChooseConsultantScreen> createState() => _ChooseConsultantScreenState();
}

class _ChooseConsultantScreenState extends State<ChooseConsultantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: commonAppBarPanditji1("Choose Consultant"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(MyRouter.consultantDetailsScreen);
                      print("GOING TO CONSULTANT DETATILS SCREEN");
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10.h),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              offset: const Offset(0, 1),
                              blurRadius: 6,
                            ),
                          ],
                          color: AppColors.continerBackgroundColor,

                          // color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )),
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Material(
                                    borderRadius: BorderRadius.circular(50),
                                    elevation: 3,
                                    child: SizedBox(
                                      height: 90.h,
                                      width: 90.w,
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
                              addHeight(7.h),
                              Text(
                                "Astro Dheeraj",
                                style: AppTextStyles.size16WithW500,
                              ),
                              addHeight(4.h),
                              Row(
                                children: const [
                                  Text("4.5"),
                                  Icon(
                                    size: 15,
                                    Icons.star,
                                    color: Color(0xffFCD400),
                                  ),
                                  Icon(
                                    size: 15,
                                    Icons.star,
                                    color: Color(0xffFCD400),
                                  ),
                                  Icon(
                                    size: 15,
                                    Icons.star,
                                    color: Color(0xffFCD400),
                                  ),
                                  Icon(
                                    size: 15,
                                    Icons.star,
                                    color: Color(0xffFCD400),
                                  ),
                                  Icon(
                                    size: 15,
                                    Icons.star,
                                    color: Color(0xffFCD400),
                                  ),
                                ],
                              )
                            ],
                          ),
                          addWidth(20.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Vedic Pooja Path",
                                style: AppTextStyles.size14WithW400353535,
                              ),
                              addHeight(8.h),
                              Row(
                                children: [
                                  Text(
                                    "Lang: ",
                                    style: AppTextStyles.size14WithW400353535,
                                  ),
                                  addWidth(10.w),
                                  Text(
                                    "Hindi , English",
                                    style: AppTextStyles.size14WithW400353535,
                                  ),
                                ],
                              ),
                              addHeight(8.h),
                              Row(
                                children: [
                                  Text(
                                    "Exp: ",
                                    style: AppTextStyles.size14WithW400353535,
                                  ),
                                  addWidth(10.w),
                                  Text(
                                    "10 Years",
                                    style: AppTextStyles.size14WithW400353535,
                                  ),
                                ],
                              ),
                              addHeight(8.h),
                              Text(
                                "\u{20B9}1500",
                                style: AppTextStyles.size14WithW500darkblack,
                              ),
                              addHeight(8.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  addWidth(130.w),
                                  Container(
                                    height: 40.h,
                                    // width: 10.w,
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(30)),
                                        border: Border.all(
                                            color: AppColors.appPrimaryColor,
                                            width: (1))),
                                    child: MaterialButton(
                                      onPressed: () {
                                        Get.toNamed(
                                            MyRouter.consultantDetailsScreen);
                                        print(
                                            "Going to Consultant Details Scree");
                                      },
                                      child: Text(
                                        "Select",
                                        style: GoogleFonts.poppins(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xffF8560D)),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
