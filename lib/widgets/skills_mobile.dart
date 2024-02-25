import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common/skill_items.dart';
import 'package:flutter_portfolio/common/theme.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 500.0,
      ),
      child: Column(
        children: [
          // platforms
          for (int i = 0; i < platformItems.length; i++)
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: AppColors.secondaryDark,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
                leading: Image.asset(
                  platformItems[i]["img"],
                  width: 26.0,
                  color: AppColors.darkText,
                ),
                title: Text(platformItems[i]["title"]),
              ),
            ),
          // Skills
          const SizedBox(
            height: 50,
          ),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < skillItems.length; i++)
                Chip(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 16.0),
                  backgroundColor: AppColors.secondaryDark,
                  label: Text(skillItems[i]["title"]),
                  avatar: Image.asset(skillItems[i]["img"]),
                )
            ],
          )
        ],
      ),
    );
  }
}
