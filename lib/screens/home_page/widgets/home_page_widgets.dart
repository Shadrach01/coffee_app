import 'package:coffee_app/core/commons/widgets/app_button.dart';
import 'package:coffee_app/core/commons/widgets/app_container.dart';
import 'package:coffee_app/core/utils/color_res.dart';
import 'package:coffee_app/core/utils/image_res.dart';
import 'package:coffee_app/screens/home_page/widgets/promo_banner.dart';
import 'package:coffee_app/screens/home_page/widgets/tabs/tab_bar_widget.dart';
import 'package:flutter/material.dart';

class HomePageWidgets extends StatelessWidget {
  const HomePageWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,

          decoration: BoxDecoration(
            color: ColorRes.color3,
          ),
        ),
        Container(
          height: 300,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.bottomLeft,
              radius: 1,
              colors: [
                ColorRes.color1.withOpacity(.1),
                // Faded version of color4
                ColorRes.color4.withOpacity(0),
                // Transparent at the bottom
              ],
              stops: [0.3, 1], // Control the fade distance
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
              top: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Location",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  spacing: 5,
                  children: [
                    Text(
                      "Bilzen Tanjungbalai",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Image.asset(
                      ImageRes.arrowDown,
                      color: Colors.white,
                      width: 15,
                      height: 15,
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  spacing: 20,
                  children: [
                    Expanded(
                      flex: 1,
                      child: AppContainer(
                        lineGradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            ColorRes.color5.withOpacity(0),
                            ColorRes.color5.withOpacity(.1),
                          ],
                          stops: [0, 1],
                        ),
                        child: Row(
                          spacing: 10,
                          children: [
                            const SizedBox(width: 5),
                            Image.asset(
                              ImageRes.search,
                              color: Colors.white,
                              width: 20,
                              height: 20,
                            ),
                            Expanded(
                              child: TextFormField(
                                style: TextStyle(
                                  color: ColorRes.color4,
                                  fontSize: 16,
                                ),
                                decoration: InputDecoration(
                                  hintText: "Search coffee",
                                  hintStyle: TextStyle(
                                    color: ColorRes.color4,
                                    fontSize: 16,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    AppButton(
                      width: 60,
                      color: ColorRes.color1,
                      child: Image.asset(
                        ImageRes.filter,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                PromoBanner(),
                const SizedBox(height: 20),
                TabBarWidget(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
