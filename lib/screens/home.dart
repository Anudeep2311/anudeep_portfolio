import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_portfolio/common/size.dart';
import 'package:flutter_portfolio/common/theme.dart';
import 'package:flutter_portfolio/widgets/header_desktop.dart';
import 'package:flutter_portfolio/widgets/header_mobile.dart';
import 'package:flutter_portfolio/widgets/mobile_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        endDrawer:
            constraints.maxWidth >= kMinDesktop ? null : const MobileDrawer(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            if (constraints.maxWidth >= kMinDesktop)
              const HeaderDesktop()
            else
              HeaderMobile(
                  onTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  }),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              height: screenSize.height / 1.2,
              constraints: const BoxConstraints(minHeight: 350.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      "assets/anudeep.png",
                      width: screenWidth / 2,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Hi,\nI am Anudeep\nA Flutter Developer",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: AppColors.darkText,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Get in touch"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 500,
              width: double.maxFinite,
              color: AppColors.darkButton,
            ),
            Container(
              height: 500,
              width: double.maxFinite,
            ),
            Container(
              height: 500,
              width: double.maxFinite,
              color: AppColors.darkButton,
            ),
          ],
        ),
      );
    });
  }
}
