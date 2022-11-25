import 'package:digitalastro/utils/colors.dart';
import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/app_assets.dart';

class MyConsultations extends StatefulWidget {
  const MyConsultations({Key? key}) : super(key: key);

  @override
  State<MyConsultations> createState() => _MyConsultationsState();
}

class _MyConsultationsState extends State<MyConsultations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBarPanditji2("My Pandit Ji"),
      // backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 395.w,
                      padding: const EdgeInsets.all(14),
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.05),
                              offset: const Offset(0, 0.4),
                              blurRadius: 6,
                            ),
                          ],
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Stack(
                                          children: [
                                            SizedBox(
                                              height: 76.h,
                                              width: 76.w,
                                              child: ClipRRect(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(50)),
                                                  child:
                                                      Image.asset(Ig.person)),
                                            ),
                                            Positioned(
                                                right: 5,
                                                bottom: 0,
                                                child: CircleAvatar(
                                                  backgroundColor:
                                                      Color(0xff19BB33),
                                                  radius: 8,
                                                ))
                                          ],
                                        ),
                                        addHeight(7.h),
                                        Text(
                                          "Astro Sachin",
                                          style: GoogleFonts.poppins(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff353535)),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "4.5",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: AppColors.textColor,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Icon(
                                              size: 12,
                                              Icons.star,
                                              color: Color(0xffFCD400),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    addWidth(10.w),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              Ig.vedic,
                                              height: 16.h,
                                              width: 16.w,
                                            ),
                                            addWidth(5.w),
                                            Text("Vedic Pooja  Path",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color(
                                                        0xff111115))),
                                          ],
                                        ),
                                        addHeight(8.h),
                                        Row(
                                          children: [
                                            Image.asset(
                                              Ig.language,
                                            ),
                                            addWidth(5.w),
                                            Text("Hindi, English",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color(
                                                        0xff111115))),
                                          ],
                                        ),
                                        addHeight(8.h),
                                        Row(
                                          children: [
                                            Image.asset(
                                              Ig.experience,
                                            ),
                                            addWidth(5.w),
                                            Text("15 Years",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color(
                                                        0xff111115))),
                                          ],
                                        ),
                                        addHeight(8.h),
                                        Container(
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                Ig.save,
                                              ),
                                              addWidth(5.w),
                                              Text("\u{20B9} 1500",
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: const Color(
                                                          0xff111115))),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.delete_forever_outlined,
                                  color: AppColors.appPrimaryColor,
                                ),
                              ),
                            ],
                          ),
                          addHeight(5.h),
                          Divider(),
                          addHeight(10.h),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 50.h,
                                      width: 57.w,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          image: DecorationImage(
                                              image:
                                                  AssetImage(Ig.shivjiHome))),
                                    ),
                                    addWidth(10.w),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 287.w,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Akhand Ramayan ",
                                                style: TextStyle(
                                                    fontSize: 16.sp,
                                                    color: Color.fromRGBO(
                                                        17, 17, 21, 1),
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                        ),
                                        addHeight(11.h),
                                        Row(
                                          children: [
                                            Text(
                                              "Category : ",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontFamily: "Poppins",
                                                  color: Color.fromRGBO(
                                                      17, 17, 21, 1),
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text(
                                              "Online Pooja",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontFamily: "Poppins",
                                                  color: Color.fromRGBO(
                                                      17, 17, 21, 1),
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                addHeight(35.h),
                                Container(
                                  height: 40.h,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.w),
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          const Radius.circular(30)),
                                      color: AppColors.appPrimaryColor),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Book Again",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: AppColors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
