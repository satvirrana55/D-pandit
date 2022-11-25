import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:digitalastro/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

import '../../../utils/text_styles.dart';

class Pc {
  static const Color platinumPackageColor = Color(0xFFFA941C);
  static const Color goldPackageColor = Color(0xFF31A6B6);
  static const Color bronzePackageColor = Color(0xFF19BB33);
}

class AllPackages extends StatefulWidget {
  const AllPackages({super.key});

  @override
  State<AllPackages> createState() => _AllPackagesState();
}

class _AllPackagesState extends State<AllPackages> {
  List colors = [
    Pc.platinumPackageColor,
    Pc.goldPackageColor,
    Pc.bronzePackageColor,
  ];

  List packages = [
    "Platinum Package",
    "Gold Package",
    "Bronze Package",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBarPanditji2("Available Packages"),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            children: [
              Text(
                "Available Packages on 17-08-2022",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(17, 17, 21, 1),
                ),
              ),
              addHeight(24.h),
              ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return FittedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Container(
                          width: 396.w,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: colors[index],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30)),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    packages[index],
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1),
                                    ),
                                  ),
                                  Text(
                                    "Rs 19,852.00",
                                    style: AppTextStyles.size20WithW500,
                                  ),
                                ],
                              ),
                              addHeight(5.h),
                              const Divider(
                                color: Color.fromRGBO(224, 224, 224, 1),
                              ),
                              addHeight(5.h),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.check,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            "Dakshina",
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w300,
                                              color: const Color.fromRGBO(
                                                  255, 255, 255, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.check,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            "Flowers & Fruits",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w300,
                                              color: const Color.fromRGBO(
                                                  255, 255, 255, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  addHeight(8.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.check,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            "All Pooja Materials",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w300,
                                              color: const Color.fromRGBO(
                                                  255, 255, 255, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.check,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            "Flowers & Fruits",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w300,
                                              color: const Color.fromRGBO(
                                                  255, 255, 255, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  addHeight(24.h),
                                  Container(
                                    child: const ReadMoreText(
                                      "In Gold Package, 5 Vedic Purohts will be there, 16 Kalasams will be kept, More number of mantra ahutis will be there and more number of homams are performed.",
                                      trimLines: 3,
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300),
                                      lessStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                      trimMode: TrimMode.Line,
                                      trimCollapsedText: 'Read More',
                                      trimExpandedText: ' Show less',
                                      moreStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  CommonButton("Book Now", () {})
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
