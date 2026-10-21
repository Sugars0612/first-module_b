class ChefFoodItem {
  String name;
  String imagePathName;

  ChefFoodItem({
    required this.name,
    required this.imagePathName,
  });

  factory ChefFoodItem.fromJson(Map<String, dynamic> json) {
    return ChefFoodItem(name: json['name'], imagePathName: "http://10.0.2.2:9999${json['image']}");
  }
}