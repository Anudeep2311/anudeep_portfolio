import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common/nav_title.dart';
import 'package:flutter_portfolio/common/theme.dart';
import 'package:flutter_portfolio/styles/style.dart';
import 'package:flutter_portfolio/widgets/site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: kHeaderDecoration,
      height: 60,
      width: double.maxFinite,
      child: Row(
        children: [
          SiteLogo(
            onTap: () {},
          ),
          const Spacer(),
          for (int i = 0; i < navTitle.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    navTitle[i],
                    style: const TextStyle(
                      color: AppColors.darkText,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            )
        ],
      ),
    );
  }
}
