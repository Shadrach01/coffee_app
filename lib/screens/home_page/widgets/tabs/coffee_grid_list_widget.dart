import 'package:coffee_app/core/commons/widgets/app_button.dart';
import 'package:coffee_app/core/model/coffee_model.dart';
import 'package:coffee_app/core/utils/color_res.dart';
import 'package:coffee_app/core/utils/image_res.dart';
import 'package:coffee_app/screens/detail_page/provider/coffee_details_provider.dart';
import 'package:coffee_app/screens/detail_page/view/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

import '../../../../core/utils/coffee_details.dart';

class CoffeeGridListWidget extends ConsumerWidget {
  const CoffeeGridListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: .6,
      ),
      itemCount: coffeeList.length,
      itemBuilder: (context, index) {
        final coffeeIndex = coffeeList[index];
        return _coffeeView(
          ref: ref,
          coffeeModel: coffeeIndex,
        );
      },
    );
  }

  Widget _coffeeView({
    required WidgetRef ref,
    required CoffeeModel coffeeModel,
  }) {
    return GestureDetector(
      onTap: () {
        ref.read(selectedCoffeeProvider.notifier).state = coffeeModel;
        Get.to(
          DetailPage(),
          transition: Transition.cupertinoDialog,
          duration: Duration(seconds: 1),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 150,
        decoration: BoxDecoration(
          color: ColorRes.color5,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(coffeeModel.image),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coffeeModel.name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  coffeeModel.type,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      coffeeModel.price,
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    AppButton(
                      height: 30,
                      child: Image.asset(
                        ImageRes.plus,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
