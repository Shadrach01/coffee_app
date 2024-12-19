import 'package:coffee_app/core/commons/widgets/app_container.dart';
import 'package:coffee_app/core/utils/color_res.dart';
import 'package:coffee_app/core/utils/image_res.dart';
import 'package:flutter/material.dart';

class DiscountContainer extends StatelessWidget {
  const DiscountContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      color: Colors.white,
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Image.asset(
            ImageRes.discount,
            color: ColorRes.color1,
          ),
          SizedBox(width: 15),
          Text(
            "1 Discount Applies",
            style: TextStyle(
              color: ColorRes.color3,
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          Spacer(),
          Image.asset(ImageRes.arrowRight)
        ],
      ),
    );
  }
}
