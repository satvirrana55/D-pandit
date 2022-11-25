import 'package:digitalastro/utils/colors.dart';
import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/text_styles.dart';

class UserNotification extends StatelessWidget {
  const UserNotification({super.key});

  @override
  Widget build(BuildContext context) {
    const Day = ["Today", "Yesterday", "31-12-2021", "31-1-2022"];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: commonAppBarPanditji2("Notifications"),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addHeight(24.h),
              ListView.builder(
                  itemCount: Day.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return (Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Day[index],
                            style: AppTextStyles.size14WithW500,
                          ),
                          addHeight(16.h),
                          ListView.builder(
                              scrollDirection: Axis.vertical,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: Day[index] == "Yesterday" ? 2 : 1,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Container(
                                  child: (Container(
                                    padding: EdgeInsets.all(10.h),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            addHeight(16.h),
                                            Container(
                                              width: 40.w,
                                              height: 40.w,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(30)),
                                                  color: Color.fromRGBO(
                                                      255, 232, 222, 1)),
                                              child: Icon(
                                                Icons
                                                    .notifications_none_outlined,
                                                color:
                                                    AppColors.appPrimaryColor,
                                              ),
                                            ),
                                            addWidth(16.w),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Booking Confirmation",
                                                  style: AppTextStyles
                                                      .size16WithW500,
                                                ),
                                                addHeight(8.h),
                                                Container(
                                                  width: 319.w,
                                                  child: Text(
                                                    "Lorem ipsum dolor sit amet, consectetur piscing elit. ",
                                                    style: AppTextStyles
                                                        .size14WithW400,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )),
                                );
                              })
                        ],
                      ),
                    ));
                  }),
              addHeight(24.h)
            ],
          ),
        ),
      ),
    );
  }
}
