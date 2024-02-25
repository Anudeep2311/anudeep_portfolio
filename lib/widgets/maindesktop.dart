import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common/theme.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              "assets/anudeep.png",
              width: screenWidth / 2,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hi,\nI am Anudeep\nA Flutter Developer",
                style: TextStyle(
                  fontSize: 30,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkText,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 300,
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
        ],
      ),
    );
  }
}
