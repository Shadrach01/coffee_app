import 'package:coffee_app/core/utils/color_res.dart';
import 'package:coffee_app/screens/home_page/provider/tab_index_provider.dart';
import 'package:coffee_app/screens/home_page/widgets/tabs/coffee_grid_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TabBarWidget extends ConsumerWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabIndex =
        ref.watch(tabIndexProvider); // Watch the tab index state
    final tabIndexNotifier =
        ref.read(tabIndexProvider.notifier); // Read the notifier
    return DefaultTabController(
      length: 4,
      child: Expanded(
        child: Column(
          children: [
            TabBar(
              onTap: (index) => tabIndexNotifier.changeIndex(index),
              padding: EdgeInsets.only(bottom: 10),
              isScrollable: true,
              labelColor: ColorRes.color4,
              dividerColor: Colors.transparent,
              indicator: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              unselectedLabelColor: Colors.black,
              tabs: [
                _buildTab("All Coffees", tabIndex, 0),
                _buildTab("Machiato", tabIndex, 1),
                _buildTab("Latte", tabIndex, 2),
                _buildTab("American Expresso", tabIndex, 3),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  CoffeeGridListWidget(),
                  CoffeeGridListWidget(),
                  CoffeeGridListWidget(),
                  CoffeeGridListWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String title, int index, int selectedIndex) {
    final isSelected = selectedIndex == index;
    return Tab(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: isSelected ? ColorRes.color1 : Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? ColorRes.color5 : ColorRes.color3,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
