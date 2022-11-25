import 'package:digitalastro/utils/colors.dart';
import 'package:digitalastro/utils/text_styles.dart';
import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/app_assets.dart';
import '../router/my_router.dart';

class VedicPoojaPathScreen extends StatefulWidget {
  const VedicPoojaPathScreen({Key? key}) : super(key: key);

  @override
  State<VedicPoojaPathScreen> createState() => _VedicPoojaPathScreenState();
}

class _VedicPoojaPathScreenState extends State<VedicPoojaPathScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.w),
            child: ListView.builder(
              itemCount: 14,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  height: 155.h,
                  width: 395.w,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
                  margin: EdgeInsets.only(top: 16.h),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          offset: const Offset(0, 0),
                          blurRadius: 1,
                        ),
                      ],
                      color: AppColors.continerBackgroundColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                height: 76.h,
                                width: 76.w,
                                child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50)),
                                    child: Image.asset(Ig.person)),
                              ),
                              Positioned(
                                  right: 5,
                                  bottom: 0,
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xff19BB33),
                                    radius: 8,
                                  ))
                            ],
                          ),
                          addHeight(7.h),
                          Text(
                            "Astro Sachin",
                            style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff353535)),
                          ),
                          Row(
                            children: [
                              Text(
                                "4.5",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: AppColors.textColor,
                                    fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                size: 12,
                                Icons.star,
                                color: Color(0xffFCD400),
                              ),
                            ],
                          )
                        ],
                      ),
                      addWidth(18.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                Ig.vedic,
                                height: 16.h,
                                width: 16.w,
                              ),
                              addWidth(5.w),
                              Text("Vedic Pooja  Path",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff111115))),
                            ],
                          ),
                          addHeight(8.h),
                          Row(
                            children: [
                              Image.asset(
                                Ig.language,
                              ),
                              addWidth(5.w),
                              Text("Hindi, English",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff111115))),
                            ],
                          ),
                          addHeight(8.h),
                          Row(
                            children: [
                              Image.asset(
                                Ig.experience,
                              ),
                              addWidth(5.w),
                              Text("15 Years",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff111115))),
                            ],
                          ),
                          addHeight(8.h),
                          Container(
                            child: Row(
                              children: [
                                Image.asset(
                                  Ig.save,
                                ),
                                addWidth(5.w),
                                Text("\u{20B9} 1500/Onwards",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff111115))),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 40.h,
                            width: 92.w,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                color: AppColors.appPrimaryColor),
                            child: MaterialButton(
                              onPressed: () {
                                Get.toNamed(MyRouter.panditProflie);
                              },
                              child: Row(
                                children: [
                                  Image.asset(
                                    Ig.chat,
                                    height: 17.h,
                                    width: 20.w,
                                  ),
                                  addWidth(6.w),
                                  Text(
                                    "Chat",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
