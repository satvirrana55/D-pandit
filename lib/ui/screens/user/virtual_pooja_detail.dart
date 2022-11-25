import 'package:digitalastro/theme/app_assets.dart';
import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:digitalastro/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import '../../../router/my_router.dart';
import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';

class VirtualPoojaDetail extends StatelessWidget {
  const VirtualPoojaDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBarPanditji2("Virtual Pooja"),
      backgroundColor: const Color(0xffF5F5F5),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            addHeight(16.h),
            Container(
              height: 220.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Ig.ganeshji3), fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            addHeight(24.h),
            Text(
              "Akhand Ramayan",
              style: AppTextStyles.size18WithW500,
            ),
            addHeight(16.h),
            Container(
              width: 396.w,
              child: ReadMoreText(
                "Lorem ipsum dolo met, consectetur adipiscing elit. Quis a, tortor et gravida gravida lectus. Pellentesque nullam id ante id aliquam faucibus enim, fames. Lectus at ut vitae auctor at in id id lectus. Mauris enim posuere tortor viverra feugiat id. Imperdiet sed porttitor at ac aliquam fermentum netus. Sem dis elit tortor sit platea est massa eu id. Mattis pellentesque ullamcorper laoreet netus mattis netus. Feugiat porttito.",
                trimLines: 7,
                style: AppTextStyles.size14WithW400,
                lessStyle: TextStyle(color: AppColors.appPrimaryColor),
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Read More',
                trimExpandedText: ' Show less',
                moreStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black),
              ),
            ),
            addHeight(20.h),
            Text(
              "Pooja Requirement Details",
              style: AppTextStyles.size18WithW500,
            ),
            addHeight(20.h),
            Container(
              child: ReadMoreText(
                "Lorem ipsum Lorem ipsum dolor sit amet,     elite. Qui a, tort et gravid gravida lectus. Pellentesque nullam id ante id aliquot faucets enim, fames. Lectus at ut vitae auctor at in id id lectus. Mauris enim posuere tortor viverra feugiat id. Imperdiet sed porttitor at ac aliquam fermentum netus. Sem dis elit tortor sit platea est massa eu id. Mattis pellentesque ullamcorper laoreet netus mattis netus. Feugiat porttito.",
                trimLines: 6,
                style: AppTextStyles.size14WithW400,
                lessStyle: TextStyle(color: AppColors.appPrimaryColor),
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Read More',
                trimExpandedText: 'Show less',
                moreStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black),
              ),
            ),
            addHeight(20.h),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Other Offering", style: AppTextStyles.size18WithW500),
                addHeight(12.h),
                Text(
                    "1. Lorem ipsum Lorem ipsum dolor sit sit amet sit sit amet,  ",
                    style: AppTextStyles.size14WithW400),
                addHeight(12.h),
                Text(
                  "2. Lorem ipsum Lorem ipsum dolor sit sit amet sit sit amet,  ",
                  style: AppTextStyles.size14WithW400,
                ),
                addHeight(12.h),
                Text(
                  "3. Lorem ipsum Lorem ipsum dolor sit sit amet sit sit amet,  ",
                  style: AppTextStyles.size14WithW400,
                ),
                addHeight(12.h),
                Text(
                  "4. Lorem ipsum Lorem ipsum dolor sit sit amet sit sit amet,  ",
                  style: AppTextStyles.size14WithW400,
                ),
                addHeight(12.h),
                Text(
                  "5. Lorem ipsum Lorem ipsum dolor sit sit amet sit sit amet,  ",
                  style: AppTextStyles.size14WithW400,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " Price: ",
                  style: AppTextStyles.size16WithW500,
                ),
                Text(
                  "INR 1500",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            CommonButton("Book Now", () {
              Get.toNamed(MyRouter.bookingPanditJiOnlineScreen);
              print("clicked Book now");
            }),
          ],
        ),
      )),
    );
  }
}
