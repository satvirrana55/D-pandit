import 'dart:math' as math;

import 'package:digitalastro/utils/colors.dart';
import 'package:digitalastro/widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

import '../../../theme/app_assets.dart';

class ChatScreenUser extends StatefulWidget {
  const ChatScreenUser({super.key});

  @override
  State<ChatScreenUser> createState() => _ChatScreenUserState();
}

class _ChatScreenUserState extends State<ChatScreenUser> {
  List<Message> messages = [
    Message(
      text: "Hello",
      date: DateTime.now(),
      isSentByMe: true,
    ),
    Message(
      text: "Hi",
      date: DateTime.now(),
      isSentByMe: false,
    ),
    Message(
      text: "Lorem ipsum",
      date: DateTime.now(),
      isSentByMe: true,
    ),
    Message(
        text: "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
        date: DateTime.now(),
        isSentByMe: false),
    Message(
        text: "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
        date: DateTime.now(),
        isSentByMe: true),
    Message(
        text: "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit.",
        date: DateTime.now(),
        isSentByMe: false),
  ].toList();

  TextEditingController _inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBarPanditji2("Chat"),
      body: Column(
        children: [
          Expanded(
            child: GroupedListView<Message, DateTime>(
              padding: EdgeInsets.all(8),
              order: GroupedListOrder.DESC,
              reverse: true,
              floatingHeader: true,
              useStickyGroupSeparators: true,
              elements: messages,
              groupBy: (message) => DateTime(
                message.date.year,
                message.date.month,
                message.date.day,
              ),
              groupHeaderBuilder: (Message message) => SizedBox(
                height: 50.h,
                child: Center(
                  child: Card(
                    color: Color.fromRGBO(234, 232, 232, 1),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        DateFormat.yMMMd().format(message.date),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              itemBuilder: (context, Message message) => message.isSentByMe
                  ? Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(Ig.sender),
                            addWidth(5.w),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: AppColors.appPrimaryColor,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Text(
                                  message.text,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(Ig.receiver),
                            addWidth(5.w),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: Color.fromRGBO(255, 227, 215, 1),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Text(
                                  message.text,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
            ),
          ),
          Row(
            children: [
              Container(
                width: 326.w,
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                    color: Color.fromRGBO(224, 224, 224, 1),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.07),
                      offset: Offset(
                        0.0,
                        2.0,
                      ),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.emoji_emotions_outlined,
                      color: AppColors.appPrimaryColor,
                    ),
                    Container(
                      width: 200.w,
                      child: TextField(
                        controller: _inputController,
                        decoration: InputDecoration(
                          hintText: "Type something",
                          border: InputBorder.none,
                        ),
                        onSubmitted: (text) {
                          final message = Message(
                            text: text,
                            date: DateTime.now(),
                            isSentByMe: true,
                          );
                          setState(() {
                            messages.add(message);
                            _inputController.clear();
                          });
                        },
                      ),
                    ),
                    Spacer(),
                    Transform.rotate(
                      angle: 40 * math.pi / 180,
                      child: Icon(Icons.attach_file,
                          color: Color.fromRGBO(78, 78, 82, 1)),
                    ),
                    addWidth(10.w),
                  ],
                ),
              ),
              SizedBox(width: 7.w),
              Container(
                padding: EdgeInsets.all(8),
                height: 59.h,
                width: 59.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: AppColors.appPrimaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.07),
                      offset: Offset(
                        0.0,
                        2.0,
                      ),
                    ),
                  ],
                ),
                child: InkWell(
                  onTap: () {
                    final message = Message(
                      text: _inputController.text,
                      date: DateTime.now(),
                      isSentByMe: true,
                    );
                    setState(() {
                      messages.add(message);
                      _inputController.clear();
                    });
                  },
                  child: Transform.rotate(
                    angle: 330 * math.pi / 180,
                    child: Icon(
                      Icons.send,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          addHeight(27.h),
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;

  const Message({
    required this.text,
    required this.date,
    required this.isSentByMe,
  });
}
