import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common/theme.dart';
import 'package:flutter_portfolio/utils/project_utils.dart';
import 'dart:js' as js;

class ProjectCards extends StatelessWidget {
  final ProjectUtils projectUtils;
  const ProjectCards({
    super.key,
    required this.projectUtils,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.buttonColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            projectUtils.image,
            height: 140,
            width: 260,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              projectUtils.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColors.primaryDark,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              projectUtils.subtitle,
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.secondaryDark,
              ),
            ),
          ),
          const Spacer(),
          // Footer
          Container(
            color: AppColors.darkButton,
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Row(
              children: [
                const Text(
                  "Available on:",
                  style: TextStyle(
                    color: AppColors.secondaryDark,
                    fontSize: 10,
                  ),
                ),
                const Spacer(),
                if (projectUtils.androidLink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [projectUtils.androidLink]);
                    },
                    child: Image.asset(
                      "assets/androiddev.png",
                      width: 18,
                      color: Colors.white,
                    ),
                  ),
                if (projectUtils.iosLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod("open", [projectUtils.iosLink]);
                      },
                      child: Image.asset(
                        "assets/iosicon.png",
                        width: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                if (projectUtils.webLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod("open", [projectUtils.webLink]);
                      },
                      child: Image.asset(
                        "assets/website.png",
                        width: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
