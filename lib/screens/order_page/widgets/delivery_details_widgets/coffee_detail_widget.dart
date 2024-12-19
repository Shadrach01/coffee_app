import 'package:coffee_app/core/commons/widgets/app_container.dart';
import 'package:coffee_app/core/utils/color_res.dart';
import 'package:coffee_app/core/utils/image_res.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CoffeeDetailWidget extends StatelessWidget {
  final String image, name, type;

  const CoffeeDetailWidget({
    super.key,
    required this.image,
    required this.name,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 5,
          children: [
            Text(
              name,
              style: TextStyle(
                color: ColorRes.color3,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              type,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const Spacer(),
        AppContainer(
          color: Colors.white,
          radius: 50,
          height: 35,
          width: 35,
          child: FaIcon(FontAwesomeIcons.minus, size: 18,),
        ),
        Text(
          "1",
          style: TextStyle(
            color: ColorRes.color3,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        AppContainer(
          color: Colors.white,
          radius: 50,
          height: 35,
          width: 35,
          child: FaIcon(
            FontAwesomeIcons.plus,
            size: 18,
          ),
        ),
      ],
    );
  }
}
