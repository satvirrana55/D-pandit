import 'package:digitalastro/theme/app_assets.dart';
import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:digitalastro/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:readmore/readmore.dart';
import 'package:time_pickerr/time_pickerr.dart';

import '../../../router/my_router.dart';
import '../../../utils/colors.dart';
import '../../../utils/text_styles.dart';

class OnlinePoojaDetailsScreen extends StatefulWidget {
  const OnlinePoojaDetailsScreen({Key? key}) : super(key: key);

  @override
  State<OnlinePoojaDetailsScreen> createState() =>
      _OnlinePoojaDetailsScreenState();
}

class _OnlinePoojaDetailsScreenState extends State<OnlinePoojaDetailsScreen> {
  TextEditingController dateInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: commonAppBarPanditji1("Pooja Details"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                height: 311.h,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(Ig.shivji2), fit: BoxFit.cover)),
                child: Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Color(0xffFA941C),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  width: 349.w,
                  child: Text(
                    "Ganesh Ji Pooja",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
              addHeight(34.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 396.w,
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 15.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(0, 1),
                            blurRadius: 6,
                          ),
                        ],
                        color: AppColors.continerBackgroundColor,
                      ),
                      child: Row(
                        children: [
                          Text("Category: ",
                              style: AppTextStyles.size14WithW500darkblack),
                          addWidth(10.w),
                          Text(
                            "Online Pooja",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    addHeight(16.h),
                    Container(
                      width: 396.w,
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 15.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(0, 1),
                            blurRadius: 6,
                          ),
                        ],
                        color: AppColors.continerBackgroundColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Staring From",
                              style: AppTextStyles.size16WithW400),
                          addWidth(10.w),
                          Text(
                            "INR 50000/",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    addHeight(16.h),
                    Container(
                      width: 396.w,
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 15.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(0, 1),
                            blurRadius: 6,
                          ),
                        ],
                        color: AppColors.continerBackgroundColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Advantages of Pooja",
                            style: AppTextStyles.size18WithW600,
                          ),
                          addHeight(16.h),
                          Text(
                              "1. Lorem ipsum dolor sit sit amet sit sit amet,  ",
                              style: AppTextStyles.size14WithW400),
                          Text(
                            "2. Lorem ipsum dolor sit sit amet sit sit amet,  ",
                            style: AppTextStyles.size14WithW400,
                          ),
                          Text(
                            "3. Lorem ipsum dolor sit sit amet sit sit amet,  ",
                            style: AppTextStyles.size14WithW400,
                          ),
                          Text(
                            "4. Lorem ipsum dolor sit sit amet sit sit amet,  ",
                            style: AppTextStyles.size14WithW400,
                          ),
                          Text(
                            "5. Lorem ipsum dolor sit sit amet sit sit amet,  ",
                            style: AppTextStyles.size14WithW400,
                          ),
                        ],
                      ),
                    ),
                    addHeight(16.h),
                    Container(
                      width: 396.w,
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 15.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(0, 1),
                            blurRadius: 6,
                          ),
                        ],
                        color: AppColors.continerBackgroundColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "About Pooja",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          addHeight(16.h),
                          ReadMoreText(
                            "Lorem ipsum dolor sit sit amet sit sit amet,  . Cum ac nisl penatibus vestibulum feugiat. Purus sollicitudin quis accumsan egestas dignissim viverra sed. Ut libero suspendisse dictum sit mi magnis in et. Cursus leo neque hendrerit non purus dui tristique dolor tristique...",
                            trimLines: 5,
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w400),
                            lessStyle: const TextStyle(color: Colors.blue),
                            trimMode: TrimMode.Line,
                            trimCollapsedText: 'Read More',
                            trimExpandedText: 'Show less',
                            moreStyle: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    addHeight(20.h),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(0, 1),
                            blurRadius: 6,
                          ),
                        ],
                        color: AppColors.continerBackgroundColor,
                      ),
                      child: TextField(
                        controller: dateInput,
                        //editing controller of this TextField
                        decoration: InputDecoration(
                            hintText: 'Select Date',
                            hintStyle:
                                TextStyle(color: Colors.black, fontSize: 16.sp),
                            filled: true,
                            fillColor: Colors.white60,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 15),
                            disabledBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            border: InputBorder.none,
                            prefixIcon: const Icon(
                              Icons.calendar_today_rounded,
                              color: Colors.grey,
                              size: 18,
                            )),
                        readOnly: true,

                        onTap: () async {
                          DateTime? selectedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1950),
                              //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(2101));

                          if (selectedDate != null) {
                            // print(_selectedDate);
                            dateInput = selectedDate.toString()
                                as TextEditingController;
                            print(dateInput);
                            String formattedDate =
                                DateFormat.yMMMMd('en_US').format(selectedDate);
                            // print(formattedDate);
                            setState(() {
                              dateInput.text =
                                  formattedDate; //set output date to TextField value.
                            });
                          } else {
                            print("Date is not selected");
                          }
                        },
                      ),
                    ),
                    addHeight(10.h),
                    Container(
                      width: 396.w,
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(0, 1),
                            blurRadius: 6,
                          ),
                        ],
                        color: AppColors.continerBackgroundColor,
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return buildCustomTimer(context);
                            },
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.watch_later_outlined,
                              color: Colors.grey,
                            ),
                            addWidth(20.w),
                            Text(
                              "Select Time",
                              style: TextStyle(
                                fontSize: 16.sp,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    addHeight(23.h),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            offset: const Offset(0, 1),
                            blurRadius: 6,
                          ),
                        ],
                        color: AppColors.continerBackgroundColor,
                      ),
                      child: ExpansionTile(
                        title: Text(
                          "FAQ",
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w500),
                        ),
                        children: [
                          Container(
                            //
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: .4),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(30))),
                            child: ExpansionTile(
                              title: Text(
                                "Lorem ipsum dolor sit sit amet sit sit amet, ",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10.0),
                                  child: const Text(
                                      "Loren poresn is the description of the given text will gonna apperar here,Loren poresn is the description of the given text will gonna apperar here"),
                                )
                              ],
                            ),
                          ),
                          addHeight(10.h),
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: .4),
                                borderRadius: const BorderRadius.all(
                                    const Radius.circular(30))),
                            child: ExpansionTile(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10.0),
                                  child: const Text(
                                      "Loren poresn is the description of the given text will gonna apperar here"),
                                )
                              ],
                              title: Text(
                                "Lorem ipsum dolor sit sit amet sit sit amet, ",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                            ),
                          ),
                          addHeight(10.h),
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: .4),
                                borderRadius: const BorderRadius.all(
                                    const Radius.circular(30))),
                            child: ExpansionTile(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10.0),
                                  child: const Text(
                                      "Loren poresn is the description of the given text will gonna apperar here"),
                                )
                              ],
                              title: Text(
                                "Lorem ipsum dolor sit sit amet sit sit amet, ",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                            ),
                          ),
                          addHeight(10.h),
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: .4),
                                borderRadius: const BorderRadius.all(
                                    const Radius.circular(30))),
                            child: ExpansionTile(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10.0),
                                  child: const Text(
                                      "Loren poresn is the description of the given text will gonna apperar here"),
                                )
                              ],
                              title: Text(
                                "Lorem ipsum dolor sit sit amet sit sit amet, ",
                                style: TextStyle(fontSize: 16.sp),
                              ),
                            ),
                          ),
                          addHeight(10.h),
                        ],
                      ),
                    ),
                    addHeight(48.h),
                    CommonButton("Book Now", () {
                      Get.toNamed(MyRouter.chooseConsultantScreen);
                    }),
                    addHeight(20.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildCustomTimer(BuildContext context) {
    return CustomHourPicker(
      title: "Please Select Time",
      elevation: 2,
      onPositivePressed: (context, time) {
        time = time;
        Get.back();
      },
      onNegativePressed: (context) {
        print('onNegative');
      },
    );
  }
}
