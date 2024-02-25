import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common/size.dart';
import 'package:flutter_portfolio/common/theme.dart';
import 'package:flutter_portfolio/utils/project_utils.dart';
import 'package:flutter_portfolio/widgets/project_cards.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        if (screenWidth >= kMinDesktop)
          Positioned(
            left: 0,
            right: screenWidth / 1.1,
            top: 15,
            bottom: 0,
            child: Align(
                alignment: Alignment.topLeft,
                child: Image.asset('assets/mobile.png')),
          ),
        if (screenWidth >= kMinDesktop)
          Positioned(
            left: screenWidth / 1.2,
            right: 0,
            top: 15,
            bottom: 0,
            child: Align(
                alignment: Alignment.bottomRight,
                child: Image.asset('assets/coder.png')),
          ),
        Container(
          width: screenWidth,
          padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
          child: Column(
            children: [
              // Project starts here
              const Text(
                "Projects",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: AppColors.darkText,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 900),
                child: Wrap(
                  spacing: 25,
                  runSpacing: 25,
                  children: [
                    for (int i = 0; i < myProjects.length; i++)
                      ProjectCards(
                        projectUtils: myProjects[i],
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
