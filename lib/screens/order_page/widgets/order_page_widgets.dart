import 'package:coffee_app/screens/order_page/widgets/delivery_details_widgets/delivery_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/color_res.dart';
import '../../home_page/provider/tab_index_provider.dart';

class OrderPageWidgets extends ConsumerWidget {
  const OrderPageWidgets({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabIndex =
        ref.watch(tabIndexProvider); // Watch the tab index state
    final tabIndexNotifier =
        ref.read(tabIndexProvider.notifier); // Read the notifier
    return Column(
      children: [
        const SizedBox(height: 20),
        DefaultTabController(
          length: 2,
          child: Expanded(
            child: Column(
              children: [
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: ColorRes.color4,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TabBar(
                    onTap: (index) =>
                        tabIndexNotifier.changeIndex(index),
                    padding: EdgeInsets.zero,
                    labelPadding: EdgeInsets.zero,
                    labelColor: ColorRes.color4,
                    dividerColor: Colors.transparent,
                    indicator: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      _buildTab("Deliver", tabIndex, 0),
                      _buildTab("Pick Up", tabIndex, 1),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      DeliveryDetails(),
                      DeliveryDetails(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTab(String title, int index, int selectedIndex) {
    final isSelected = selectedIndex == index;
    return Tab(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? ColorRes.color1 : Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? ColorRes.color5 : ColorRes.color3,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
