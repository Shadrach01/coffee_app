import 'package:coffee_app/core/utils/color_res.dart';
import 'package:coffee_app/screens/order_page/widgets/order_page_widgets.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.color5,
      appBar: AppBar(
        backgroundColor: ColorRes.color5,
        title: Text(
          "Order",
          style: TextStyle(
            color: ColorRes.color3,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        centerTitle: true,
      ),
      body: OrderPageWidgets(),
    );
  }
}
