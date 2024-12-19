import 'package:coffee_app/core/model/coffee_model.dart';
import 'package:coffee_app/core/utils/color_res.dart';
import 'package:coffee_app/screens/detail_page/widget/detail_page_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.color5,
      appBar: AppBar(
        title: Text(
          "Detail",
          style: TextStyle(
            color: ColorRes.color3,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: FaIcon(
              FontAwesomeIcons.heart,
            ),
          ),
        ],
        backgroundColor: ColorRes.color5,
      ),
      body: DetailPageWidgets(),
    );
  }
}
