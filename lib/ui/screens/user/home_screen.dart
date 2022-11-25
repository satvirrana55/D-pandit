import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../router/my_router.dart';
import '../../../utils/text_styles.dart';
import '../../../widgets/bottomNavBar.dart';
import '../../../widgets/common_app_bar.dart';
import '../../../widgets/drawer.dart';
import '../../../widgets/home_widgets.dart';
import '../../../widgets/search_box.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({Key? key, arguments}) : super(key: key);

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      drawer: myDrawer(context),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      appBar: commonAppBarHome("Logo"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              searchbox(),
              addHeight(16.h),
              Container(
                  width: 396.h, child: FittedBox(child: homeSwiperPooja())),
              addHeight(24.h),
              Row(
                children: [
                  Text(
                    "Pooja's Category",
                    style: AppTextStyles.size18WithW600,
                  ),
                ],
              ),
              addHeight(16.h),
              Container(
                  width: 396.w, child: FittedBox(child: poojasCategoryHome())),
              addHeight(24.h),
              Row(
                children: [
                  Text(
                    "Pandit Ji",
                    style: AppTextStyles.size18WithW600,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(MyRouter.allPanditScreen);
                      print("Goind to Choose Consultant screen");
                    },
                    child: const Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              addHeight(16.h),
              panditJiHome(),
              addHeight(24.h),
              Row(
                children: [
                  Text(
                    " Top Pooja's",
                    style: AppTextStyles.size18WithW600,
                  ),
                  // const Spacer(),
                  // GestureDetector(
                  //   onTap: () {
                  //     print("Going to user online pooja screen");
                  //     Get.toNamed(MyRouter.userOnlinePoojaScreen);
                  //   },
                  //   child: const Text(
                  //     "See All",
                  //     style: TextStyle(
                  //         fontSize: 13,
                  //         color: Colors.blue,
                  //         fontWeight: FontWeight.bold),
                  //   ),
                  // ),
                ],
              ),
              addHeight(16.h),
              topPoojas(),
            ],
          ),
        ),
      ),
    );
  }
}
