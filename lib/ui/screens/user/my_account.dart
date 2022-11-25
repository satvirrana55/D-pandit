import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../router/my_router.dart';
import '../../../theme/app_assets.dart';
import '../../../utils/text_styles.dart';
import '../../../widgets/bottomNavBar.dart';
import '../../../widgets/common_drawer_container.dart';

class UserMyAccountScreen extends StatefulWidget {
  const UserMyAccountScreen({Key? key}) : super(key: key);

  @override
  State<UserMyAccountScreen> createState() => _UserMyAccountScreenState();
}

class _UserMyAccountScreenState extends State<UserMyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      appBar: commonAppBarPanditji2("My Account"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 122.h,
                width: 396.w,
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                        width: 1,
                        color: const Color.fromRGBO(224, 224, 224, 1)
                            .withOpacity(0.6))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(Ig.personMyAccount),
                      // foregroundColor: Colors.blue,
                      minRadius: 50,
                    ),
                    addWidth(20.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Jenny Winsome",
                            style: AppTextStyles.size18WithW500),
                        addHeight(10.h),
                        Text(
                          "8262825282",
                          style: AppTextStyles.size14WithW400,
                        ),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          Get.toNamed(MyRouter.updateProfilePanditji);
                        },
                        icon: const Icon(
                          Icons.edit,
                          size: 18,
                          color: Color.fromRGBO(83, 83, 93, 1),
                        ))
                  ],
                ),
              ),
              addHeight(20.h),
              InkWell(
                  onTap: () {
                    Get.toNamed(MyRouter.userAllBookingsScreen);
                  },
                  child: commondrawerContainerMyAccount(
                      Icons.list, "My Pooja Bookings")),
              addHeight(20.h),
              InkWell(
                  onTap: () {},
                  child:
                      commondrawerContainerMyAccount(Icons.history, "History")),
              addHeight(20.h),
              InkWell(
                  onTap: () {
                    Get.toNamed(MyRouter.myWallet);
                  },
                  child: commondrawerContainerMyAccount(
                      Icons.wallet_outlined, "My Wallet")),
              addHeight(20.h),
              InkWell(
                  onTap: () {
                    Get.toNamed(MyRouter.myConsultations);
                  },
                  child: commondrawerContainerMyAccount(
                      Icons.star_border_outlined, "My Pandit Ji")),
              addHeight(20.h),
              InkWell(
                  onTap: () {
                    Get.toNamed(MyRouter.helpCenter);
                  },
                  child: commondrawerContainerMyAccount(
                      Icons.help_center_outlined, "Help Center")),
              addHeight(20.h),
              InkWell(
                  onTap: () {
                    Get.toNamed(MyRouter.chooseUserScreen);
                  },
                  child: commondrawerContainerMyAccount(
                      Icons.logout_rounded, "Logout")),
              addHeight(20.h),
            ],
          ),
        ),
      ),
    );
  }
}
