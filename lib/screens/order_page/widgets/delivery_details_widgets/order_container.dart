import 'package:coffee_app/core/commons/widgets/app_button.dart';
import 'package:coffee_app/core/utils/color_res.dart';
import 'package:coffee_app/screens/delivery_address_map/view/delivery_address_map.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class OrderButtonContainer extends StatelessWidget {
  const OrderButtonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.5),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        spacing: 10,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 20,
            children: [
              FaIcon(
                FontAwesomeIcons.wallet,
                color: ColorRes.color1,
                size: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Text(
                    "Cash/Wallet",
                    style: TextStyle(
                      color: ColorRes.color3,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "\$ 5.53",
                    style: TextStyle(
                      color: ColorRes.color1,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_down_sharp,
                size: 40,
              )
            ],
          ),
          AppButton(
              onTap: () => Get.to(
                    DeliveryAddressMap(),
                    transition: Transition.cupertino,
                    duration: Duration(seconds: 1),
                  ),
              child: Text(
                "Order",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ))
        ],
      ),
    );
  }
}
