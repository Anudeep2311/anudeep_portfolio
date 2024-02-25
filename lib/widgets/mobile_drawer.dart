import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common/nav_title.dart';
import 'package:flutter_portfolio/common/theme.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.primaryColor,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
                bottom: 20,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Transform.rotate(
                  angle: 45 * pi / 180,
                  child: const Icon(
                    Icons.add,
                    color: AppColors.secondaryDark,
                  ),
                ),
              ),
            ),
          ),
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              onTap: () {},
              contentPadding: const EdgeInsets.symmetric(horizontal: 30.0),
              titleTextStyle: const TextStyle(
                  color: AppColors.primaryDark,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
              iconColor: AppColors.secondaryDark,
              leading: Icon(navIcons[i]),
              title: Text(navTitle[i]),
            )
        ],
      ),
    );
  }
}
