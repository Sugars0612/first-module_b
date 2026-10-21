import 'package:module_b_first/features/discover/models/ChefFoodItem.dart';
import 'package:module_b_first/features/home/models/FoodItem.dart';

class ChefItem {
  int id;
  String name;
  String avatarPathname;
  double rating;
  String introduce;

  List<ChefFoodItem> foods;

  ChefItem({
    required this.id,
    required this.name,
    required this.avatarPathname,
    required this.rating,
    required this.introduce,
    required this.foods
  });

}