import 'package:coffee_app/core/model/coffee_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedCoffeeProvider =
    StateProvider<CoffeeModel?>((ref) => null);
