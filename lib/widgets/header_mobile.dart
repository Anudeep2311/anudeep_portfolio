import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common/theme.dart';
import 'package:flutter_portfolio/styles/style.dart';
import 'package:flutter_portfolio/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  final VoidCallback? onTap;
  final VoidCallback? onMenuTap;

  const HeaderMobile({
    super.key,
    required this.onTap,
    required this.onMenuTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(10, 5, 20, 5),
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(onTap: onTap),
          const Spacer(),
          IconButton(
            onPressed: onMenuTap,
            icon: const Icon(
              Icons.menu,
              color: AppColors.darkText,
            ),
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }
}
