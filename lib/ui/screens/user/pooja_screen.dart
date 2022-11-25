import 'package:digitalastro/router/my_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../theme/app_assets.dart';
import '../../../utils/text_styles.dart';
import '../../../widgets/bottomNavBar.dart';
import '../../../widgets/common_app_bar.dart';

class UserPoojaScreen extends StatefulWidget {
  UserPoojaScreen({Key? key}) : super(key: key);

  @override
  State<UserPoojaScreen> createState() => _UserPoojaScreenState();
}

class _UserPoojaScreenState extends State<UserPoojaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      appBar: commonAppBarPanditji1("Pooja"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed(MyRouter.userOnlinePoojaScreen);
              },
              child: Container(
                height: 100.h,
                padding: const EdgeInsets.all(20),
                margin: EdgeInsets.only(bottom: 30.h, top: 110.h),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: const Offset(0, 1),
                      blurRadius: 6,
                    ),
                  ],
                  color: const Color(0xffDDFFDF),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                        Ig.store,
                      ))),
                    ),
                    addWidth(20),
                    Text(
                      "Online Pooja ",
                      style: AppTextStyles.size18WithW600,
                    ),
                    addWidth(10)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(MyRouter.userOfflinePoojaScreen);
              },
              child: Container(
                height: 100.h,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: const Offset(0, 1),
                      blurRadius: 6,
                    ),
                  ],
                  color: const Color(0xffFFE5E8),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                        Ig.pooja,
                      ))),
                    ),
                    addWidth(20),
                    Text(
                      "Offline Pooja",
                      style: AppTextStyles.size18WithW600,
                    ),
                    addWidth(10)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(MyRouter.virtualPoojaScreen);
              },
              child: Container(
                height: 100.h,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: const Offset(0, 1),
                      blurRadius: 6,
                    ),
                  ],
                  color: const Color(0xffE8F1FF),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                        Ig.solar,
                      ))),
                    ),
                    addWidth(20),
                    Text(
                      "Virtual Pooja",
                      style: AppTextStyles.size18WithW600,
                    ),
                    addWidth(10)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(MyRouter.specialPoojaRequest);
              },
              child: Container(
                height: 100.h,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: const Offset(0, 1),
                      blurRadius: 6,
                    ),
                  ],
                  color: const Color(0xffFFE7FB),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                        Ig.astro,
                      ))),
                    ),
                    addWidth(20),
                    Text(
                      "On Request pooja",
                      style: AppTextStyles.size18WithW600,
                    ),
                    // Spacer(),
                    // Text(
                    //   Time[index],
                    //   style: TextStyle(
                    //     fontSize: 13,
                    //   ),
                    // ),
                    addWidth(10)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
