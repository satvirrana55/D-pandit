import 'package:digitalastro/theme/app_assets.dart';
import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../router/my_router.dart';
import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';
import '../../../widgets/panditji/bottomNavBar.dart';
import '../../../widgets/panditji/common_widgets.dart';

class HomeScreenPanditji extends StatefulWidget {
  HomeScreenPanditji({Key? key}) : super(key: key);

  @override
  State<HomeScreenPanditji> createState() => _HomeScreenPanditjiState();
}

class _HomeScreenPanditjiState extends State<HomeScreenPanditji> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xffFFFFFF),
      bottomNavigationBar: const CustomBottomNavigationBarPanditJI(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.appPrimaryColor,
        title: Text(
          "Digital Pandit",
          style: TextStyle(color: Colors.white, fontSize: 18.sp),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(MyRouter.chatScreenPanditji);
              },
              icon: Icon(
                Icons.notification_add_rounded,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 20.h),
                height: 85.h,
                decoration: BoxDecoration(
                    color: Color(0xffF2F6FF),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    Container(
                      height: 46.h,
                      width: 46.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(Ig.totalPoojaimg),
                              fit: BoxFit.cover)),
                    ),
                    addWidth(20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Total Pooja Performed",
                          style: AppTextStyles.size16WithW500,
                        ),
                        Text(
                          "120",
                          style: AppTextStyles.size14WithW500,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              addHeight(24.h),
              Text(
                "My Today’s Consultation",
                style: AppTextStyles.size16WithW500,
              ),
              addHeight(16.h),
              scroolListMyBookings(),
              addHeight(24.h),
              Row(
                children: [
                  Text(
                    "   Date",
                    style: AppTextStyles.size16WithW500,
                  ),
                  Text(
                    "21-04-2022",
                    style: AppTextStyles.size16WithW500,
                  ),
                ],
              ),
              addHeight(16.h),
              scroolListMyBookings(),
            ],
          ),
        ),
      ),
    );
  }
}
