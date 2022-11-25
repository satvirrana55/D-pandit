import 'package:digitalastro/utils/colors.dart';
import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:digitalastro/widgets/vedicPoojaPath.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/bottomNavBar.dart';

class AllPanditScreen extends StatefulWidget {
  const AllPanditScreen({Key? key}) : super(key: key);

  @override
  State<AllPanditScreen> createState() => _AllPanditScreenState();
}

class _AllPanditScreenState extends State<AllPanditScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      appBar: commonAppBarPanditji1("Book Pandit"),
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
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
                        child: Text("Vedic Pooja Path"),
                      ),
                      Tab(
                        child: Text("Pooja Experts"),
                      ),
                      Tab(
                        child: Text("Pooja All"),
                      ),
                    ],
                  ),
                ),
                addHeight(20.h),
                const Expanded(
                  child: TabBarView(
                    children: [
                      VedicPoojaPathScreen(),
                      VedicPoojaPathScreen(),
                      VedicPoojaPathScreen(),
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
