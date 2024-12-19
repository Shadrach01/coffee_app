import 'package:coffee_app/core/commons/widgets/app_container.dart';
import 'package:coffee_app/core/utils/color_res.dart';
import 'package:coffee_app/core/utils/image_res.dart';
import 'package:coffee_app/core/utils/text_res.dart';
import 'package:flutter/material.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(ImageRes.promoBanner),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          AppContainer(
            color: Colors.red,
            height: 30,
            width: 90,
            radius: 10,
            child: Text(
              "Promo",
              style: TextStyle(
                color: ColorRes.color5,
                fontSize: 16,
              ),
            ),
          ),
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  const SizedBox(height: 5),
                  AppContainer(
                    radius: 0,
                    height: 35,
                    width: 250,
                    color: Colors.brown[900],
                  ),
                  AppContainer(
                    radius: 0,
                    height: 35,
                    width: 180,
                    color: Colors.brown[900],
                  ),
                ],
              ),
              Positioned(
                top: -9,
                left: 20,
                right: 20,
                child: Text(
                  TextRes.getOneFree,
                  style: TextStyle(
                    color: ColorRes.color5,
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
