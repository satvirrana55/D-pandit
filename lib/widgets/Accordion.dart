import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/text_styles.dart';

class Accordion extends StatefulWidget {
  final String title;
  final String content;

  const Accordion({required this.title, required this.content, Key? key})
      : super(key: key);

  @override
  State<Accordion> createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _showContent = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (() {
          setState(() {
            _showContent = !_showContent;
          });
        }),
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 12.w, horizontal: 16.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              border:
                  Border.all(color: Color.fromRGBO(224, 224, 224, 1), width: 1),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(17, 17, 21, 1)),
                    ),
                    Icon(
                      _showContent
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      size: 30.sp,
                    ),
                  ],
                ),
                _showContent ? addHeight(10.5.h) : addHeight(0),
                _showContent
                    ? (Text(
                        widget.content,
                        style: AppTextStyles.size14WithW400,
                      ))
                    : Container()
              ],
            )));
  }
}
