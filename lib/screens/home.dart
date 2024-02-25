import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_portfolio/common/size.dart';
import 'package:flutter_portfolio/common/theme.dart';
import 'package:flutter_portfolio/widgets/header_desktop.dart';
import 'package:flutter_portfolio/widgets/header_mobile.dart';
import 'package:flutter_portfolio/widgets/main_mobile.dart';
import 'package:flutter_portfolio/widgets/maindesktop.dart';

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
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
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
            if (constraints.maxWidth >= kMinDesktop)
              const MainDesktop()
            else
              const MainMobile(),
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
