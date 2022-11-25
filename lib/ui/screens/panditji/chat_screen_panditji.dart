import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:digitalastro/widgets/panditji/bottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../theme/app_assets.dart';
import '../../../utils/colors.dart';

class ChatScreenPanditji extends StatefulWidget {
  const ChatScreenPanditji({Key? key}) : super(key: key);

  @override
  State<ChatScreenPanditji> createState() => _ChatScreenPanditjiState();
}

class _ChatScreenPanditjiState extends State<ChatScreenPanditji> {
  List Images = [
    Ig.personImg1,
    Ig.pooja,
    Ig.bank,
    Ig.boyImageDrawer,
    Ig.discount,
    Ig.personMyAccount,
  ];
  List Names = [
    "Rashi Vaidya",
    "Rahul Vaidya",
    "Mona Vaidya",
    "Rahil Vaidya",
    "Raja Vaidya",
    "Vashist Vaidya",
  ];
  List Time = [
    "1 Min",
    "2 Min",
    "22 Oct",
    "4 Feb",
    "3 Nov",
    "3 Nov",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      bottomNavigationBar: CustomBottomNavigationBarPanditJI(),
      appBar: commonAppBarPanditji1("Chat"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.w),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height.h / 1.1,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    height: 92.h,
                    padding: EdgeInsets.all(20.h),
                    margin: EdgeInsets.only(bottom: 13.h),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.08),
                        offset: Offset(0, 0),
                        blurRadius: 6,
                      ),
                    ], color: AppColors.continerBackgroundColor),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(Images[index]),
                          minRadius: 30,
                        ),
                        addWidth(20.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              Names[index],
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Hii",
                              style: TextStyle(fontSize: 14.sp),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          Time[index],
                          style: TextStyle(
                            fontSize: 13.sp,
                          ),
                        ),
                        addWidth(10.w)
                      ],
                    ),
                  );
                },
                itemCount: 5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
