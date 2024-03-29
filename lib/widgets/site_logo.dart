import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common/theme.dart';

class SiteLogo extends StatelessWidget {
  final VoidCallback? onTap;
  const SiteLogo({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const CircleAvatar(
        backgroundImage: AssetImage('assets/annadon.jpg'),
        backgroundColor: AppColors.primaryColor,
      ),
    );
  }
}
