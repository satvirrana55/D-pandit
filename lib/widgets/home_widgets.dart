import 'package:card_swiper/card_swiper.dart';
import 'package:digitalastro/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/app_assets.dart';
import '../../widgets/common_app_bar.dart';
import '../router/my_router.dart';

List PoojaNames = [
  "Online Pooja",
  "Offine Pooja",
  "Virtual Pooja",
  "on Request Pooja",
  "Offine Pooja",
  "Virtual Pooja",
  "Online Pooja",
  "Offine Pooja",
  "Virtual Pooja",
  "Online Pooja",
  "Offine Pooja",
  "Virtual Pooja",
  "Online Pooja",
  "Offine Pooja",
  "Virtual Pooja",
  "Online Pooja",
  "Offine Pooja",
  "Virtual Pooja",
  "Online Pooja",
  "Offine Pooja",
  "Virtual Pooja",
  "Online Pooja",
  "Offine Pooja",
  "Virtual Pooja",
];

List poojaImages = [
  Ig.onlinePooja,
  Ig.offlinePooja,
  Ig.virtualPooja,
  Ig.onrequrestPooja,
  Ig.offlinePooja,
  Ig.virtualPooja,
  Ig.onlinePooja,
  Ig.offlinePooja,
  Ig.virtualPooja,
  Ig.onlinePooja,
  Ig.offlinePooja,
  Ig.virtualPooja,
  Ig.onlinePooja,
  Ig.offlinePooja,
  Ig.virtualPooja,
  Ig.onlinePooja,
  Ig.offlinePooja,
  Ig.virtualPooja,
  Ig.onlinePooja,
  Ig.offlinePooja,
  Ig.virtualPooja,
  Ig.onlinePooja,
  Ig.offlinePooja,
  Ig.virtualPooja,
];

List colors = [
  const Color(0xffDDFFDF),
  const Color(0xffFFE5E8),
  const Color(0xffE8F1FF),
  const Color(0xffFFE5E8),
  const Color(0xffFFE5E8),
  const Color(0xffE8F1FF),
  const Color(0xffDDFFDF),
  const Color(0xffFFE5E8),
  const Color(0xffE8F1FF),
  const Color(0xffDDFFDF),
  const Color(0xffFFE5E8),
  const Color(0xffE8F1FF),
  const Color(0xffDDFFDF),
  const Color(0xffFFE5E8),
  const Color(0xffE8F1FF),
  const Color(0xffDDFFDF),
  const Color(0xffFFE5E8),
  const Color(0xffE8F1FF),
];

Container homeSwiperPooja() {
  return Container(
    height: 200.h,
    width: 386.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Swiper(
      // curve: Curves.bounceInOut,
      duration: 1000,
      autoplay: true,
      allowImplicitScrolling: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListView.builder(
          physics: const ScrollPhysics(),
          itemCount: 10,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) =>
                //             DetailScreen()));
              },
              child: Container(
                margin: EdgeInsets.only(right: 10),
                width: 386.w,
                height: 200.h,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          Ig.homeswiperbannerlogo,
                        ),
                        fit: BoxFit.cover),
                    color: Colors.transparent),
                child: Row(
                  children: [
                    Container(
                      height: 159.h,
                      width: 151.w,
                      decoration: const BoxDecoration(
                          image:
                              DecorationImage(image: AssetImage(Ig.ganeshji))),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 50,
                        right: 10,
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ganesh Ji \nSpecial Pooja",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24.sp),
                            textAlign: TextAlign.left,
                          ),
                          addHeight(8.h),
                          Text(
                            "Starting from INR 1200",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                            textAlign: TextAlign.left,
                          ),
                          addHeight(16.h),
                          Container(
                            height: 32.h,
                            width: 92.w,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                border: Border.all(color: Colors.red)),
                            child: MaterialButton(
                              onPressed: () {},
                              child: FittedBox(
                                child: Text(
                                  "Book Now",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 12.sp),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    ),
  );
}

List panditjiNames = [
  "Surubhi Jain",
  "Rajesh Vaidya",
  "Sarubh Jain",
  "Surubhi Jain",
  "Surubhi Jain",
  "Surubhi Jain",
  "Rajesh Vaidya",
  "Sarubh Jain",
  "Surubhi Jain",
  "Surubhi Jain",
  "Surubhi Jain",
  "Rajesh Vaidya",
  "Sarubh Jain",
  "Surubhi Jain",
  "Surubhi Jain",
  "Surubhi Jain",
  "Rajesh Vaidya",
  "Sarubh Jain",
  "Surubhi Jain",
  "Surubhi Jain",
  "Surubhi Jain",
  "Rajesh Vaidya",
  "Sarubh Jain",
  "Surubhi Jain",
  "Surubhi Jain",
];
List topPoojaNames = [
  "Akh and Ramayana Path Havan",
  "Maa Kali Pooja Paath Havan",
  "Hand Ramayana Paath Havan",
  "Ganesh Pooja",
  "Akhand Ramayana Paath Havan",
  "Ganesh Pooja",
  "Akhand Ramayana Paath Havan",
  "Ganesh Pooja",
  "Akhand Ramayana Paath Havan",
  "Ganesh Pooja",
  "Akhand Ramayana Paath Havan",
  "Ganesh Pooja",
  "Akhand Ramayana Paath Havan",
  "Ganesh Pooja",
  "Akhand Ramayana Paath Havan",
  "Ganesh Pooja",
  "Akhand Ramayana Paath Havan",
  "Ganesh Pooja",
  "Akhand Ramayana Paath Havan",
  "Ganesh Pooja",
  "Akhand Ramayana Paath Havan",
  "Ganesh Pooja",
  "Akhand Ramayana Paath Havan",
  "Ganesh Pooja",
  "Akhand Ramayana Paath Havan",
  "Ganesh Pooja",
];

List panditJiImages = [
  Ig.panditjiHome1,
  Ig.panditjiHome2,
  Ig.panditjiHome1,
  Ig.panditjiHome2,
  Ig.panditjiHome1,
  Ig.panditjiHome1,
  Ig.panditjiHome2,
  Ig.panditjiHome1,
  Ig.panditjiHome2,
  Ig.panditjiHome1,
  Ig.panditjiHome1,
  Ig.panditjiHome2,
  Ig.panditjiHome1,
  Ig.panditjiHome2,
  Ig.panditjiHome1,
  Ig.panditjiHome1,
  Ig.panditjiHome2,
  Ig.panditjiHome1,
  Ig.panditjiHome2,
  Ig.panditjiHome1,
];
List topPoojsImages = [
  Ig.shivjiHome,
  Ig.ganeshjiHome,
  Ig.shivjiHome,
  Ig.ganeshjiHome,
  Ig.shivjiHome,
  Ig.ganeshjiHome,
  Ig.shivjiHome,
  Ig.ganeshjiHome,
  Ig.shivjiHome,
  Ig.ganeshjiHome,
  Ig.shivjiHome,
  Ig.ganeshjiHome,
  Ig.shivjiHome,
  Ig.ganeshjiHome,
  Ig.shivjiHome,
  Ig.ganeshjiHome,
  Ig.shivjiHome,
  Ig.ganeshjiHome,
  Ig.shivjiHome,
  Ig.ganeshjiHome,
  Ig.shivjiHome,
  Ig.ganeshjiHome,
];

SizedBox poojasCategoryHome() {
  return SizedBox(
    height: 114.h,
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.only(top: 10),
          height: 111.h,
          width: 119.w,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  offset: const Offset(0, 0),
                  blurRadius: 6,
                ),
              ],
              // image: DecorationImage(image: AssetImage(AppAssets.food1)),
              color: colors[index],
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          margin: EdgeInsets.only(left: 10.h, right: 10.h),
          child: InkWell(
            onTap: () {
              Get.toNamed(MyRouter.userPoojaScreen);
            },
            child: Column(
              children: [
                SizedBox(
                  child: Image.asset(
                    poojaImages[index],
                    height: 50,
                    width: 50,
                  ),
                ),
                addHeight(8.h),
                Text(
                  PoojaNames[index],
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}

Container panditJiHome() {
  return Container(
    height: 139.h,
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          width: 137.w,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  offset: const Offset(0, 0),
                  blurRadius: 6,
                ),
              ],
              // image: DecorationImage(image: AssetImage(AppAssets.food1)),
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          margin: EdgeInsets.only(right: 12.h),
          child: InkWell(
            onTap: () {
              Get.toNamed(MyRouter.allPanditScreen);
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  padding: EdgeInsets.only(left: 0, right: 0, top: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          image: AssetImage(Ig.panditjiback),
                          fit: BoxFit.cover)),
                  // width: 147.w,
                  height: 81.h, width: 137.w,
                  child: Column(
                    children: [
                      Text(panditjiNames[index],
                          style: AppTextStyles.size14WithW500darkblack),
                      Text("Vastu Expert", style: AppTextStyles.size12WithW400),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 10),
                  height: 71.h,
                  width: 71.w,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 71.h,
                        // width: 71.w,
                        child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                            child: Image.asset(panditJiImages[index])),
                      ),
                      const Positioned(
                          right: 3,
                          bottom: 0,
                          child: CircleAvatar(
                            backgroundColor: Color(0xff17EB50),
                            radius: 8,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}

SizedBox topPoojas() {
  return SizedBox(
    height: 291.h,
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return FittedBox(
          child: Container(
            width: 196.w,
            height: 291.h,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: const Offset(0, 0),
                    blurRadius: 6,
                  ),
                ],
                // image: DecorationImage(
                //     image: AssetImage(Ig.logo), fit: BoxFit.cover),
                color: const Color(0XFFF5F5F5),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            margin: const EdgeInsets.only(right: 16),
            child: InkWell(
              onTap: () {
                Get.toNamed(MyRouter.onlinePoojaDetailsScreen);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 156.h,
                    width: 177.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(topPoojsImages[index]))),
                  ),
                  addHeight(13.h),
                  Text(
                    topPoojaNames[index],
                    style: AppTextStyles.size16WithW500,
                  ),
                  const Spacer(),
                  Text(
                    "Cate: Online Pooja",
                    style: AppTextStyles.size14WithW400,
                  ),
                  addHeight(8.h),
                  Row(
                    children: [
                      Text(
                        "Starting From:",
                        style: AppTextStyles.size14WithW400,
                      ),
                      Text(
                        " INR 5000/:",
                        style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff111115)),
                      ),
                    ],
                  ),
                  addHeight(5.h),
                ],
              ),
            ),
          ),
        );
      },
    ),
  );
}
