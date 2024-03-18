import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';
import 'package:studies_flutter/app/home/home_page.dart';
import 'package:studies_flutter/app/message/messages_page.dart';
import 'package:studies_flutter/app/profile/profile_page.dart';
import 'package:studies_flutter/app/search/%5Bsearch%5D_page.dart';
import 'package:studies_flutter/routes.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  int initialPage = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();

    int index = Routefly.query['index'] | initialPage;
    initialPage = index;
    pc = PageController(initialPage: index, keepPage: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            selectedIconTheme: const IconThemeData(
                color: Color.fromARGB(255, 115, 115, 115), size: 30),
            unselectedIconTheme: const IconThemeData(
                color: Color.fromARGB(255, 162, 162, 162), size: 25),
            currentIndex: initialPage,
            enableFeedback: false,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                label: 'home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search_rounded), label: 'search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.wechat_rounded), label: 'message'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.manage_accounts_rounded), label: 'profile'),
            ],
            onTap: (value) {
              pc.animateToPage(value,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease);
            },
          ),
        ),
        body: PageView(
          controller: pc,
          children: const [Home(), Search(), Message(), Profile()],
          onPageChanged: (value) {
            setState(() {
              initialPage = value;
            });
          },
        ));
  }
}
