import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common/theme.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 560.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                AppColors.primaryDark.withOpacity(0.6),
                AppColors.primaryDark.withOpacity(0.6),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.overlay,
            child: Image.asset(
              'assets/anudeep.png',
              width: screenWidth,
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            "Hi,\nI am Anudeep\nA Flutter Developer",
            style: TextStyle(
              fontSize: 24,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: AppColors.darkText,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              style: const ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(
                  AppColors.primaryDark,
                ),
                backgroundColor: MaterialStatePropertyAll(
                  AppColors.buttonColor,
                ),
              ),
              onPressed: () {},
              child: const Text("Get in touch"),
            ),
          ),
        ],
      ),
    );
  }
}
