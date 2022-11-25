import 'package:digitalastro/router/my_router.dart';
import 'package:digitalastro/theme/app_assets.dart';
import 'package:digitalastro/utils/colors.dart';
import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:digitalastro/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../../../utils/text_styles.dart';

class PanditProflie extends StatefulWidget {
  const PanditProflie({super.key});

  @override
  State<PanditProflie> createState() => _PanditProflieState();
}

class _PanditProflieState extends State<PanditProflie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.zero,
          child: SafeArea(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: 20.h, left: 16.w),
                        alignment: Alignment.topCenter,
                        height: 157.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(Ig.updateProfileImg),
                                fit: BoxFit.cover)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40.w,
                              width: 40.w,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.h),
                                color: Colors.black.withOpacity(0.3),
                              ),
                              child:
                                  Icon(Icons.arrow_back, color: Colors.white),
                            ),
                            Container(
                                height: 40.h,
                                width: 40.h,
                                margin: EdgeInsets.all(16.h),
                                child: Image.asset(Ig.shareIcon))
                          ],
                        )),
                    Positioned(
                        child: Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 87.h),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                    color: AppColors.appPrimaryColor,
                                    width: 1,
                                  )),
                              child: SizedBox(
                                height: 140.h,
                                width: 140.h,
                                child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(100)),
                                    child: Image.asset(
                                      Ig.panditjiHome2,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                            const Positioned(
                                right: 15,
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
                        Text("4.5"),
                        Icon(
                          Icons.star,
                          color: Color(0xffFCD400),
                          size: 18.h,
                        )
                      ],
                    )
                  ],
                ),
                addHeight(19.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 101.h,
                            width: 125.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.04),
                                      offset: Offset(0.0, 8.0),
                                      blurRadius: 4.h)
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 24.h,
                                  width: 24.h,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(Ig.languageIcon),
                                          fit: BoxFit.cover)),
                                ),
                                addHeight(10.h),
                                Text(
                                  "Hindi, English, Marathi",
                                  style: AppTextStyles.size14WithW500darkblack,
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 101.h,
                            width: 125.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.04),
                                      offset: Offset(0.0, 8.0),
                                      blurRadius: 4.h)
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 24.h,
                                  width: 24.h,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(Ig.certificateIcon),
                                          fit: BoxFit.cover)),
                                ),
                                addHeight(10.h),
                                Text(
                                  "10 Years",
                                  style: AppTextStyles.size14WithW500darkblack,
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 101.h,
                            width: 125.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.04),
                                      offset: Offset(0.0, 8.0),
                                      blurRadius: 4.h)
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 24.h,
                                  width: 24.h,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(Ig.micIcon),
                                          fit: BoxFit.cover)),
                                ),
                                addHeight(10.h),
                                Text(
                                  "1500 min",
                                  style: AppTextStyles.size14WithW500darkblack,
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      addHeight(16.h),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.all(10.h),
                        height: 49.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.04),
                                  offset: Offset(0.0, 4.0),
                                  blurRadius: 11)
                            ]),
                        child: Row(
                          children: [
                            Text(
                              "Consultation Fees: ",
                              style: AppTextStyles.size16WithW400,
                            ),
                            Icon(
                              Icons.currency_rupee,
                              size: 15.sp,
                            ),
                            Text(
                              "50/min",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff111115),
                                  fontSize: 16.sp),
                            )
                          ],
                        ),
                      ),
                      addHeight(26.h),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.h),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Experties",
                              style: AppTextStyles.size18WithW600,
                            ),
                          )),
                      addHeight(11.h),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.h, vertical: 5.h),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.02),
                                  offset: Offset(0.0, 4.0),
                                  blurRadius: 4.h)
                            ]),
                        child: Wrap(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              padding: EdgeInsets.all(8.h),
                              height: 41.h,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 248, 248, 1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  border: Border.all(
                                      color: Color.fromRGBO(224, 224, 224, 1),
                                      width: (1))),
                              child: FittedBox(
                                child: Text(
                                  "Vedic",
                                  style: AppTextStyles.size14WithW500darkblack,
                                ),
                              ),
                            ),
                            addWidth(16.w),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              padding: EdgeInsets.all(8.h),
                              height: 41.h,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 248, 248, 1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  border: Border.all(
                                    color: Color.fromRGBO(224, 224, 224, 1),
                                  )),
                              child: FittedBox(
                                child: Text("Numerology",
                                    style:
                                        AppTextStyles.size14WithW500darkblack),
                              ),
                            ),
                            addWidth(16.w),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              padding: EdgeInsets.all(8.h),
                              height: 41.h,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 248, 248, 1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  border: Border.all(
                                    color: Color.fromRGBO(224, 224, 224, 1),
                                  )),
                              child: FittedBox(
                                child: Text("Tarot Reading",
                                    style:
                                        AppTextStyles.size14WithW500darkblack),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              padding: EdgeInsets.all(8.h),
                              height: 41.h,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 248, 248, 1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  border: Border.all(
                                    color: Color.fromRGBO(224, 224, 224, 1),
                                  )),
                              child: FittedBox(
                                child: Text(
                                  "Satyanarayan Pooja",
                                  style: AppTextStyles.size14WithW500darkblack,
                                ),
                              ),
                            ),
                            addWidth(16.w),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              padding: EdgeInsets.all(8.h),
                              height: 41.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  color: Color.fromRGBO(255, 248, 248, 1),
                                  border: Border.all(
                                    color: Color.fromRGBO(224, 224, 224, 1),
                                  )),
                              child: FittedBox(
                                child: Text(
                                  "Kalash Pooja",
                                  style: AppTextStyles.size14WithW500darkblack,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      addHeight(26.h),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Text(
                          "About Pandit Ji",
                          style: AppTextStyles.size18WithW500,
                        ),
                      ),
                      addHeight(6.h),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 10.h),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.02),
                                    offset: Offset(0.0, 4.0),
                                    blurRadius: 4.h)
                              ]),
                          child: ReadMoreText(
                            "Lorem ipsum dolor sit amet, consecrated advising elite. Cum ac nil penalties vestibule fugit. Purus solicitude quits accompany gestes diagnosis vivre sed. Ut libero suspense dictum sit mi mains in et. Curses leo deque hindered non purus dui Critique dolor Critique...",
                            trimLines: 4,
                            style: TextStyle(fontSize: 14.sp),
                            lessStyle: AppTextStyles.size14WithW400,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: 'Read More',
                            trimExpandedText: 'Show less',
                            moreStyle: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColors.appPrimaryColor),
                          )),
                      addHeight(20.h),
                      Container(
                        height: 52.h,
                        width: 250.w,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(30)),
                            color: AppColors.appPrimaryColor),
                        child: MaterialButton(
                          onPressed: () {
                            Get.toNamed(MyRouter.chatScreenUser);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                Ig.chat,
                                height: 17.h,
                                width: 20.w,
                              ),
                              Text(
                                "  Chat",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                      addHeight(36.h),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Text(
                              "Related Pooja",
                              style: AppTextStyles.size18WithW500,
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(MyRouter.userOnlinePoojaScreen);
                              },
                              child: Text(
                                "See All",
                                style: GoogleFonts.poppins(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff4285F4)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      addHeight(24.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(MyRouter.onlinePoojaDetailsScreen);
                            },
                            child: Container(
                              width: 196.w,
                              height: 262.h,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromRGBO(224, 224, 224, 1),
                                      width: 1.w),
                                  color: Color.fromRGBO(248, 248, 248, 1),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                              child: InkWell(
                                onTap: () {
                                  Get.toNamed(
                                      MyRouter.onlinePoojaDetailsScreen);
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      height: 156.h,
                                      width: 177.w,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image:
                                                  AssetImage(Ig.shivjiHome))),
                                    ),
                                    addHeight(5.h),
                                    Container(
                                      height: 48.h,
                                      width: 175.w,
                                      child: Text(
                                        "Akhand Ramayana Path",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(17, 17, 21, 1),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Container(
                                          width: 85.w,
                                          child: Text(
                                            "Start From:",
                                            style: TextStyle(
                                                fontSize: 13.sp,
                                                color: Color.fromRGBO(
                                                    17, 17, 21, 1),
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "INR 5000/:",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  Color.fromRGBO(17, 17, 21, 1),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    addHeight(5.h),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 196.w,
                            height: 262.h,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromRGBO(224, 224, 224, 1),
                                    width: 1.w),
                                color: Color.fromRGBO(248, 248, 248, 1),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: InkWell(
                              onTap: () {
                                Get.toNamed(MyRouter.onlinePoojaDetailsScreen);
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: 156.h,
                                    width: 177.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage(Ig.ganeshjiHome))),
                                  ),
                                  addHeight(5.h),
                                  Container(
                                    height: 48.h,
                                    width: 175.w,
                                    child: Text(
                                      "Ganesh Pooja",
                                      style: TextStyle(
                                          color: Color.fromRGBO(17, 17, 21, 1),
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Container(
                                        width: 85.w,
                                        child: Text(
                                          "Start From:",
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              color:
                                                  Color.fromRGBO(17, 17, 21, 1),
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "INR 5000/:",
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(17, 17, 21, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  addHeight(5.h),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      addHeight(39.h),
                      CommonButton3("View All", () {
                        Get.toNamed(MyRouter.userOnlinePoojaScreen);
                        print("clicked Book now");
                      }),
                      addHeight(24.h),
                    ],
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
