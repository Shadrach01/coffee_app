import 'package:coffee_app/core/commons/widgets/app_button.dart';
import 'package:coffee_app/core/commons/widgets/app_container.dart';
import 'package:coffee_app/core/utils/color_res.dart';
import 'package:coffee_app/core/utils/image_res.dart';
import 'package:coffee_app/screens/detail_page/provider/coffee_details_provider.dart';
import 'package:coffee_app/screens/order_page/view/order_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class DetailPageWidgets extends ConsumerWidget {
  const DetailPageWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final coffee = ref.watch(selectedCoffeeProvider);
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    // Rounded corners
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      // Set desired aspect ratio (adjust as needed)
                      child: Image.asset(
                        coffee!.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    coffee.name,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        coffee.type,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        spacing: 15,
                        children: [
                          AppContainer(
                            color: ColorRes.color5,
                            height: 50,
                            width: 50,
                            radius: 10,
                            child: Image.asset(ImageRes.bike),
                          ),
                          AppContainer(
                            color: ColorRes.color5,
                            height: 50,
                            width: 50,
                            radius: 10,
                            child: Image.asset(ImageRes.bean),
                          ),
                          AppContainer(
                            color: ColorRes.color5,
                            height: 50,
                            width: 50,
                            radius: 10,
                            child: Image.asset(ImageRes.milk),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    spacing: 5,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.solidStar,
                        color: ColorRes.color1,
                      ),
                      Text(
                        "4.8",
                        style: TextStyle(
                          color: ColorRes.color3,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "(230)",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Dividing line
                  Divider(),
                  const SizedBox(height: 10),
                  Text(
                    "Description",
                    style: TextStyle(
                      color: ColorRes.color3,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    coffee.description,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Sizes(),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
        PriceAndBuyNow(
          price: coffee.price,
        ),
      ],
    );
  }
}

class Sizes extends StatelessWidget {
  const Sizes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 15,
      children: [
        Text(
          "Size",
          style: TextStyle(
            color: ColorRes.color3,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppContainer(
              color: ColorRes.color5,
              width: 100,
              height: 50,
              radius: 10,
              border: Border.all(
                color: Colors.grey.shade300,
                width: 2,
              ),
              child: Text(
                "S",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            AppContainer(
              color: ColorRes.color5,
              width: 100,
              height: 50,
              radius: 10,
              border: Border.all(
                color: ColorRes.color1,
                width: 2,
              ),
              child: Text(
                "M",
                style: TextStyle(
                  color: ColorRes.color1,
                  fontSize: 20,
                ),
              ),
            ),
            AppContainer(
              color: ColorRes.color5,
              width: 100,
              height: 50,
              radius: 10,
              border: Border.all(
                color: Colors.grey.shade300,
                width: 2,
              ),
              child: Text(
                "L",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

// Price and Buy now button widget

class PriceAndBuyNow extends StatelessWidget {
  final String price;

  const PriceAndBuyNow({
    super.key,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.5),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Price",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              Text(
                price,
                style: TextStyle(
                  color: ColorRes.color1,
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                ),
              )
            ],
          ),
          AppButton(
            width: 230,
            onTap: () => Get.to(
              OrderPage(),
              transition: Transition.cupertino,
              duration: Duration(seconds: 1),
            ),
            child: Text(
              "Buy Now",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
