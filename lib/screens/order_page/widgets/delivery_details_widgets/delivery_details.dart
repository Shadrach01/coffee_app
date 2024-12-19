import 'package:coffee_app/core/commons/widgets/app_container.dart';
import 'package:coffee_app/core/utils/color_res.dart';
import 'package:coffee_app/screens/detail_page/provider/coffee_details_provider.dart';
import 'package:coffee_app/screens/order_page/widgets/delivery_details_widgets/coffee_detail_widget.dart';
import 'package:coffee_app/screens/order_page/widgets/delivery_details_widgets/discount_container.dart';
import 'package:coffee_app/screens/order_page/widgets/delivery_details_widgets/order_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeliveryDetails extends ConsumerWidget {
  const DeliveryDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final coffee = ref.watch(selectedCoffeeProvider);
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delivery Address",
                  style: TextStyle(
                    color: ColorRes.color3,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Ikeja, Lagos",
                  style: TextStyle(
                    color: ColorRes.color3,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "23, Ikeja Street, Ikeja, Lagos State.",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  spacing: 15,
                  children: [
                    AppContainer(
                      color: Colors.white,
                      width: 160,
                      height: 45,
                      radius: 30,
                      border: Border.all(
                        color: ColorRes.color3,
                        width: 1.4,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.edit_location_alt_rounded,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Edit Address",
                            style: TextStyle(
                              color: ColorRes.color3,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    AppContainer(
                      color: Colors.white,
                      width: 130,
                      height: 45,
                      radius: 30,
                      border: Border.all(
                        color: ColorRes.color3,
                        width: 1.4,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.edit_note,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Add Note",
                            style: TextStyle(
                              color: ColorRes.color3,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Divider(),
                const SizedBox(height: 15),
                CoffeeDetailWidget(
                  image: coffee!.image,
                  name: coffee.name,
                  type: coffee.type,
                ),
                const SizedBox(height: 10),
                Divider(),
                const SizedBox(height: 10),
                DiscountContainer(),
                const SizedBox(height: 15),
                Text(
                  "Payment Summary",
                  style: TextStyle(
                    color: ColorRes.color3,
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: ColorRes.color3,
                      ),
                    ),
                    Text(
                      "\$ 4.53",
                      style: TextStyle(
                        color: ColorRes.color3,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Delivery Fee",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: ColorRes.color3,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$ 2.0",
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: ColorRes.color3,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "\$ 1.0",
                      style: TextStyle(
                        color: ColorRes.color3,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        OrderButtonContainer(),
      ],
    );
  }
}
