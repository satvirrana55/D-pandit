import 'package:digitalastro/utils/colors.dart';
import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:digitalastro/widgets/panditji/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/panditji/myBookings/booking_status.dart';
import '../../../widgets/panditji/myBookings/current_order_mybookings.dart';

class AllBookingsScreen extends StatefulWidget {
  const AllBookingsScreen({Key? key}) : super(key: key);

  @override
  State<AllBookingsScreen> createState() => _AllBookingsScreenState();
}

class _AllBookingsScreenState extends State<AllBookingsScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      bottomNavigationBar: const CustomBottomNavigationBarPanditJI(),
      appBar: commonAppBarPanditji("My Bookings"),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: DefaultTabController(
            length: 4,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                  ),
                  height: 41.h,
                  child: TabBar(
                    labelColor: AppColors.appPrimaryColor,
                    unselectedLabelColor: Colors.black,
                    indicatorColor: AppColors.appPrimaryColor,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                        border: Border.all(color: AppColors.appPrimaryColor),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Colors.white),
                    tabs: const [
                      Tab(
                        child: Text("Current"),
                      ),
                      Tab(
                        child: Text("Completed"),
                      ),
                      Tab(
                        child: Text("Ongoing"),
                      ),
                      Tab(
                        child: Text("Rejected"),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      currentOrder(),
                      bookingStatus("Completed", const Color(0xff06A80D)),
                      bookingStatus("Ongoing", Color(0xff0D40F8)),
                      bookingStatus("Rejected", Colors.red),
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
