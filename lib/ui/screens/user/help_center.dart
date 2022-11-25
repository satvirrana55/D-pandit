import 'package:digitalastro/theme/app_assets.dart';
import 'package:digitalastro/utils/colors.dart';
import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:digitalastro/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../router/my_router.dart';
import '../../../utils/text_styles.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBarPanditji2("Help Center"),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height.h,
        padding: EdgeInsets.fromLTRB(16.w, 17.h, 9.w, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("How can help you? Please\n contact",
                      style: AppTextStyles.size16WithW500),
                  Container(
                    height: 140.h,
                    width: 140.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Ig.helpCenterImage))),
                  )
                ],
              ),
            ),
            addHeight(16.h),
            Divider(
              color: Color(0xFFE0E0E0),
              thickness: 1.h,
            ),
            addHeight(38.h),
            Container(
              padding: EdgeInsets.symmetric(vertical: 14.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 22,
                        color: AppColors.textColor,
                      ),
                      addWidth(10.25.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Address",
                            style: AppTextStyles.size14WithW500,
                          ),
                          addHeight(8.h),
                          SizedBox(
                            width: 269.w,
                            child: Text(
                              "4517 Washington Ave. Manchester Kentucky 39495",
                              style: AppTextStyles.size14WithW500,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 14.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.email_outlined,
                        size: 22,
                        color: AppColors.textColor,
                      ),
                      addWidth(10.25.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email Address",
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.bold),
                          ),
                          addHeight(8.h),
                          SizedBox(
                            width: 269.w,
                            child: Text(
                              "willie.jennings@example.com",
                              style: AppTextStyles.size14WithW500,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 14.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.call_outlined,
                        size: 22,
                        color: AppColors.textColor,
                      ),
                      addWidth(10.25.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Phone Number",
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.bold),
                          ),
                          addHeight(8.h),
                          SizedBox(
                            width: 269.w,
                            height: 42.h,
                            child: Text(
                              "(684) 555-0102",
                              style: AppTextStyles.size14WithW500,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Spacer(),
            Center(
                child: Container(
                    width: 258.w,
                    child: CommonButton3("Chat With Us", () {
                      Get.toNamed(MyRouter.chatScreenUser);
                    })))
          ],
        ),
      )),
    );
  }
}
