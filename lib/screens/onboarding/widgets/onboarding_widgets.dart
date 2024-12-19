import 'package:coffee_app/core/commons/widgets/app_button.dart';
import 'package:coffee_app/core/utils/color_res.dart';
import 'package:coffee_app/core/utils/image_res.dart';
import 'package:coffee_app/core/utils/text_res.dart';
import 'package:coffee_app/screens/home_page/view/home_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingWidgets extends StatelessWidget {
  const OnboardingWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            // Top image
            Container(
              height: 560,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageRes.coffee_1),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.black,
              ),
            ),
          ],
        ),
        Positioned(
          top: 510,
          left: 20,
          right: 20,
          child: Column(
            spacing: 15,
            children: [
              Text(
                TextRes.onboarding,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                TextRes.onboarding2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              AppButton(
                color: ColorRes.color1,
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onTap: () => Get.off(
                  transition: Transition.zoom,
                  duration: Duration(seconds: 1),
                  const HomePageScreen(),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
