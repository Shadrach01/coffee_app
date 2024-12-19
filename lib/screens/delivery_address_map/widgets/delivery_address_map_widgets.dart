import 'package:coffee_app/core/commons/widgets/app_container.dart';
import 'package:coffee_app/core/utils/color_res.dart';
import 'package:coffee_app/core/utils/image_res.dart';
import 'package:coffee_app/core/utils/text_res.dart';
import 'package:flutter/material.dart';

class DeliveryAddressMapWidgets extends StatelessWidget {
  const DeliveryAddressMapWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageRes.map),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 400,
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            child: Column(
              spacing: 10,
              children: [
                AppContainer(
                  color: Colors.grey.shade300,
                  height: 8,
                  width: 60,
                ),
                Text(
                  "10 minutes left",
                  style: TextStyle(
                    color: ColorRes.color3,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Delivery to ",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "35, Ikeja Street",
                      style: TextStyle(
                        color: ColorRes.color3,
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(
                      child: AppContainer(
                        color: Colors.blue,
                        height: 8,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: AppContainer(
                        color: Colors.blue,
                        height: 8,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: AppContainer(
                        color: Colors.blue,
                        height: 8,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: AppContainer(
                        color: Colors.grey.shade300,
                        height: 8,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  height: 100,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.shade300,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.shade300,
                            width: 1.4,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          ImageRes.bike,
                          scale: .5,
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 270,
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          spacing: 5,
                          children: [
                            Text(
                              "Delivered your order",
                              style: TextStyle(
                                color: ColorRes.color3,
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              TextRes.deliverOrder,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1.4,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            ImageRes.man,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Image.asset(
                        ImageRes.bike,
                        scale: .5,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 5,
                      children: [
                        Text(
                          "Brooklyn Simons",
                          style: TextStyle(
                            color: ColorRes.color3,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "Personal courier",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1.4,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        ImageRes.calling,
                        scale: .9,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
