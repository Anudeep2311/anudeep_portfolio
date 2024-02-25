import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_portfolio/common/size.dart';
import 'package:flutter_portfolio/common/skill_items.dart';
import 'package:flutter_portfolio/common/theme.dart';
import 'package:flutter_portfolio/utils/project_utils.dart';
import 'package:flutter_portfolio/widgets/header_desktop.dart';
import 'package:flutter_portfolio/widgets/header_mobile.dart';
import 'package:flutter_portfolio/widgets/main_mobile.dart';
import 'package:flutter_portfolio/widgets/maindesktop.dart';

import 'package:flutter_portfolio/widgets/mobile_drawer.dart';
import 'package:flutter_portfolio/widgets/project_cards.dart';
import 'package:flutter_portfolio/widgets/projects_section.dart';
import 'package:flutter_portfolio/widgets/skills_desktop.dart';
import 'package:flutter_portfolio/widgets/skills_mobile.dart';

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

            // SKILLS
            Container(
              // height: 500,
              width: screenWidth,
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              color: AppColors.darkButton,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // title
                  const Text(
                    "What I can do ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: AppColors.darkText,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  if (constraints.maxWidth >= kMedDesktopWidth)
                    const SkillsDesktop()
                  else
                    const SkillsMobile(),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // PROJECTS
            const ProjectSection(),
            // CONTACT
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
