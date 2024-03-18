import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:studies_flutter/widgets/view_chat.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        const Center(
            child: Text(
          'BEST OFFER',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w900, color: Colors.red),
        )),
        Container(
          decoration:
              const BoxDecoration(color: Color.fromRGBO(236, 236, 236, 1)),
          height: 1.0,
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        ),
        const Center(
            child: Text(
          'Messages',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        )),
        SizedBox(height: 20.0),
        Expanded(
            child: ListView.builder(
          itemCount: 6,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return ViewChat(
                title: 'Rafael',
                imagePath:
                    'https://wac-cdn.atlassian.com/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=1472',
                id: index.toString());
          },
        ))
      ],
    )));
  }
}
