import 'package:digitalastro/utils/colors.dart';
import 'package:digitalastro/widgets/bookingStatus.dart';
import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../router/my_router.dart';
import '../../../utils/text_styles.dart';
import '../../../widgets/bottomNavBar.dart';

class UserAllBookingsScreen extends StatefulWidget {
  const UserAllBookingsScreen({Key? key}) : super(key: key);

  @override
  State<UserAllBookingsScreen> createState() => _UserAllBookingsScreenState();
}

class _UserAllBookingsScreenState extends State<UserAllBookingsScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      appBar: commonAppBarPanditji2("My Bookings"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                Container(
                  height: 41.h,
                  child: TabBar(
                    labelColor: AppColors.appPrimaryColor,
                    unselectedLabelColor: AppColors.textColor,
                    indicatorColor: AppColors.appPrimaryColor,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    automaticIndicatorColorAdjustment: false,
                    indicator: BoxDecoration(
                        border: Border.all(color: AppColors.appPrimaryColor),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Colors.white),
                    tabs: [
                      Tab(
                        child: Text("Upcoming Pooja",
                            style: AppTextStyles.size16WithW500),
                      ),
                      Tab(
                        child: Text(
                          "Completed Pooja",
                          style: AppTextStyles.size16WithW500,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Rejected",
                          style: AppTextStyles.size16WithW500,
                        ),
                      ),
                    ],
                  ),
                ),
                addHeight(10.h),
                Expanded(
                  child: TabBarView(
                    children: [
                      userbookingStatus(
                          "Pending Request",
                          const Color.fromRGBO(
                            170,
                            63,
                            14,
                            1,
                          ), () {
                        Get.toNamed(MyRouter.approvedPoojaDetails);
                      }),
                      userbookingStatus("Completed ", Color(0xff06A80D), () {
                        Get.toNamed(MyRouter.completedPoojaDetails);
                      }),
                      userbookingStatus("Rejected", Colors.red, () {
                        Get.toNamed(MyRouter.rejectPoojaDetails);
                      }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
