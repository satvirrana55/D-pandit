import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/Accordion.dart';

class FAQS extends StatelessWidget {
  const FAQS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: commonAppBarPanditji2("FAQ"),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    addHeight(24.h),
                    Text(
                      "Frequently Asked Questions",
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(17, 17, 21, 1)),
                    ),
                    addHeight(16.h),
                    Accordion(
                        title: "Lorem ipsum dolor sit amet, consect elit.",
                        content:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pellentesque arcu vel non. Dictumst blandit interdum pellentesque libero malesuada risus, laoreet porttitor nibh. Sit vestibulum aliquam diam ut. Quis laoreet quis vulputate semper."),
                    addHeight(16.h),
                    Accordion(
                        title: "Lorem ipsum dolor sit amet, consect elit.",
                        content:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pellentesque arcu vel non. Dictumst blandit interdum pellentesque libero malesuada risus, laoreet porttitor nibh. Sit vestibulum aliquam diam ut. Quis laoreet quis vulputate semper."),
                    addHeight(16.h),
                    Accordion(
                        title: "Lorem ipsum dolor sit amet, consect elit.",
                        content:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pellentesque arcu vel non. Dictumst blandit interdum pellentesque libero malesuada risus, laoreet porttitor nibh. Sit vestibulum aliquam diam ut. Quis laoreet quis vulputate semper."),
                    addHeight(16.h),
                    Accordion(
                        title: "Lorem ipsum dolor sit amet, consect elit.",
                        content:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pellentesque arcu vel non. Dictumst blandit interdum pellentesque libero malesuada risus, laoreet porttitor nibh. Sit vestibulum aliquam diam ut. Quis laoreet quis vulputate semper."),
                    addHeight(16.h),
                    Accordion(
                        title: "Lorem ipsum dolor sit amet, consect elit.",
                        content:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pellentesque arcu vel non. Dictumst blandit interdum pellentesque libero malesuada risus, laoreet porttitor nibh. Sit vestibulum aliquam diam ut. Quis laoreet quis vulputate semper."),
                    addHeight(16.h),
                    Accordion(
                        title: "Lorem ipsum dolor sit amet, consect elit.",
                        content:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pellentesque arcu vel non. Dictumst blandit interdum pellentesque libero malesuada risus, laoreet porttitor nibh. Sit vestibulum aliquam diam ut. Quis laoreet quis vulputate semper."),
                    addHeight(16.h),
                    Accordion(
                        title: "Lorem ipsum dolor sit amet, consect elit.",
                        content:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pellentesque arcu vel non. Dictumst blandit interdum pellentesque libero malesuada risus, laoreet porttitor nibh. Sit vestibulum aliquam diam ut. Quis laoreet quis vulputate semper."),
                    addHeight(16.h),
                    Accordion(
                        title: "Lorem ipsum dolor sit amet, consect elit.",
                        content:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pellentesque arcu vel non. Dictumst blandit interdum pellentesque libero malesuada risus, laoreet porttitor nibh. Sit vestibulum aliquam diam ut. Quis laoreet quis vulputate semper."),
                    addHeight(16.h),
                  ],
                ))));
  }
}
