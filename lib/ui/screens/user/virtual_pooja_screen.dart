import 'package:digitalastro/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:readmore/readmore.dart';

import '../../../router/my_router.dart';
import '../../../theme/app_assets.dart';
import '../../../widgets/common_app_bar.dart';

class VirtualPoojaScreen extends StatefulWidget {
  const VirtualPoojaScreen({Key? key}) : super(key: key);

  @override
  State<VirtualPoojaScreen> createState() => _OnlinePoojaScreenState();
}

class _OnlinePoojaScreenState extends State<VirtualPoojaScreen> {
  List topPoojsImages = [
    Ig.ganeshji3,
    Ig.shivji2,
    Ig.laxmiji,
    Ig.shivji2,
    Ig.ganeshjiHome,
    Ig.maaKaliImg,
    Ig.ganeshjiHome,
    Ig.shivjiHome,
    Ig.ganeshjiHome,
    Ig.shivjiHome,
    Ig.ganeshjiHome,
    Ig.shivjiHome,
    Ig.ganeshjiHome,
    Ig.shivjiHome,
    Ig.ganeshjiHome,
    Ig.shivjiHome,
    Ig.ganeshjiHome,
    Ig.shivjiHome,
    Ig.ganeshjiHome,
    Ig.shivjiHome,
    Ig.ganeshjiHome,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: commonAppBarPanditji2("Virtual Pooja"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Container(
          child: GridView.builder(
            itemCount: topPoojsImages.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1),
            itemBuilder: (BuildContext context, index) {
              return Container(
                width: 396.w,
                // height: 352.h,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.05),
                        offset: Offset(0, 0),
                        blurRadius: 6,
                      ),
                    ],
                    // image: DecorationImage(
                    //     image: AssetImage(Ig.logo), fit: BoxFit.cover),
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: InkWell(
                  onTap: () {
                    Get.toNamed(MyRouter.virtualPoojaDetails);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 220.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(topPoojsImages[index]),
                                fit: BoxFit.cover),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                      ),
                      addHeight(5.h),
                      Container(
                        height: 19.h,
                        child: Text(
                          "Akhand Ramayan",
                          style: AppTextStyles.size16WithW500,
                        ),
                      ),
                      addHeight(12.h),
                      Container(
                        height: 19.h,
                        width: 114.w,
                        child: Text(
                          "Price: INR 500",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(17, 17, 2, 1)),
                        ),
                      ),
                      addHeight(12.h),
                      Container(
                        width: 376.w,
                        child: ReadMoreText(
                          "Akhand Ramayan Path is performed to achieve peace and prosperity at Ak performed to achieve peace and prosperity at Akhand Ramayan Path is performed to achieve peace and prosperity at the home and get blessings. ",
                          trimLines: 2,
                          style: AppTextStyles.size14WithW500,
                          lessStyle: AppTextStyles.size14WithW500,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'Read More',
                          trimExpandedText: ' Show less',
                          moreStyle: AppTextStyles.size14WithW500darkblack,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
