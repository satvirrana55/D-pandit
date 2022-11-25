import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:digitalastro/widgets/panditji/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../router/my_router.dart';
import '../../../theme/app_assets.dart';
import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';
import '../../../widgets/common_drawer_container.dart';

class MyAccountPanditjiScreen extends StatefulWidget {
  const MyAccountPanditjiScreen({Key? key}) : super(key: key);

  @override
  State<MyAccountPanditjiScreen> createState() =>
      _MyAccountPanditjiScreenState();
}

class _MyAccountPanditjiScreenState extends State<MyAccountPanditjiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      bottomNavigationBar: CustomBottomNavigationBarPanditJI(),
      appBar: commonAppBarPanditji1("My Account"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20.h),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: const Offset(0, 1),
                      blurRadius: 6,
                    ),
                  ],
                  color: AppColors.continerBackgroundColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(Ig.personMyAccount),
                      minRadius: 40,
                    ),
                    addWidth(30.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jenny Wilsome",
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w500),
                        ),
                        addHeight(10.h),
                        Text(
                          "7414055310",
                          style: AppTextStyles.size14WithW500,
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          Get.toNamed(MyRouter.updateProfilePanditji);
                        },
                        icon: Icon(Icons.edit))
                  ],
                ),
              ),
              addHeight(20.h),
              GestureDetector(
                  onTap: () {
                    Get.toNamed(MyRouter.helpCenter);
                  },
                  child: commondrawerContainer(Icons.help, "Help Center")),
              addHeight(20.h),
              GestureDetector(
                  onTap: () {
                    Get.toNamed(MyRouter.userAllBookingsScreen);
                  },
                  child:
                      commondrawerContainer(Icons.calendar_month, "Booking")),
              addHeight(20.h),
              GestureDetector(
                  onTap: () {
                    Get.toNamed(MyRouter.chooseUserScreen);
                  },
                  child: commondrawerContainer(Icons.logout_rounded, "Logout")),
              addHeight(20.h),
            ],
          ),
        ),
      ),
    );
  }
}
