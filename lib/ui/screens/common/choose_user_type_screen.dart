import 'package:digitalastro/theme/app_assets.dart';
import 'package:digitalastro/utils/text_styles.dart';
import 'package:digitalastro/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../router/my_router.dart';
import '../../../utils/colors.dart';
import '../../../widgets/common_widgets.dart';

class ChooseUserType extends StatefulWidget {
  const ChooseUserType({Key? key}) : super(key: key);

  @override
  State<ChooseUserType> createState() => _ChooseUserTypeState();
}

class _ChooseUserTypeState extends State<ChooseUserType> {
  SizedBox addHeight(double size) => SizedBox(height: size.h);

  SizedBox addWidth(double size) => SizedBox(width: size.w);
  bool isSelectedPandit = false;

  @override
  Widget build(BuildContext context) {
    Color _colorContainer = Colors.red;
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LogoWelcome(),
              addHeight(50.h),
              Text(
                "Register as",
                style: AppTextStyles.size20WithW500,
              ),
              addHeight(20.h),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Ink(
                        child: InkWell(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 40.w, vertical: 50.h),
                            height: 209.h,
                            width: 188.w,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: _colorContainer,
                                  width: isSelectedPandit ? 0 : 2,
                                ),
                                color: AppColors.lightOrange,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Image.asset(Ig.personImg1),
                          ),
                          onTap: () {
                            setState(() {
                              isSelectedPandit = false;
                              _colorContainer = _colorContainer == Colors.red
                                  ? Colors.blue
                                  : Colors.black;
                            });
                          },
                        ),
                      ),
                      addHeight(20.h),
                      Text("User", style: AppTextStyles.size20WithW500)
                    ],
                  ),
                  addWidth(20.w),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isSelectedPandit = true;
                              _colorContainer = _colorContainer == Colors.red
                                  ? Colors.blue
                                  : Colors.black;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 19.w, vertical: 30.h),
                            height: 209.h,
                            width: 188.w,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: _colorContainer,
                                  width: isSelectedPandit ? 2 : 0.00,
                                ),
                                color: AppColors.lightOrange,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: Image.asset(
                              Ig.panditJiImg,
                              height: 110.h,
                              width: 110.w,
                            ),
                          ),
                        ),
                      ),
                      addHeight(20.h),
                      Text("Pandit Ji", style: AppTextStyles.size20WithW500),
                    ],
                  ),
                ],
              ),
              addHeight(109.h),
              CommonButton("Continue", () {
                // Get.to(LoginScreen(isComeFromPandit: isSelectedPandit,));
                Get.toNamed(MyRouter.loginScreen,
                    arguments: [isSelectedPandit]);
              })
            ],
          ),
        ),
      ),
    );
  }
}
