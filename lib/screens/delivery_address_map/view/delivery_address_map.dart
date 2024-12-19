import 'package:coffee_app/screens/delivery_address_map/widgets/delivery_address_map_widgets.dart';
import 'package:flutter/material.dart';

class DeliveryAddressMap extends StatelessWidget {
  const DeliveryAddressMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: DeliveryAddressMapWidgets(),
    );
  }
}
