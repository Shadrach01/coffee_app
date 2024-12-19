import 'package:coffee_app/core/model/coffee_model.dart';
import 'package:coffee_app/core/utils/image_res.dart';

final List<CoffeeModel> coffeeList = [
  CoffeeModel(
    name: "Espresso",
    type: "Hot",
    description:
        "A full-flavored, concentrated form of coffee served in shots.",
    image: ImageRes.coffee_1,
    price: "\$2.50",
  ),
  CoffeeModel(
    name: "Cappuccino",
    type: "Hot",
    description: "Espresso-based drink with steamed milk foam.",
    image: ImageRes.coffee_2,
    price: "\$3.00",
  ),
  CoffeeModel(
    name: "Iced Latte",
    type: "Cold",
    description: "Chilled espresso with cold milk and ice.",
    image: ImageRes.coffee_3,
    price: "\$3.50",
  ),
  CoffeeModel(
    name: "Mocha",
    type: "Hot",
    description:
        "Chocolate-flavored variant of a latte with whipped cream.",
    image: ImageRes.coffee_5,
    price: "\$4.00",
  ),
  CoffeeModel(
    name: "Cold Brew",
    type: "Cold",
    description: "Smooth, cold coffee brewed slowly over time.",
    image: ImageRes.coffee_6,
    price: "\$3.75",
  ),
];
