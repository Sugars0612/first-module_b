class ChefFoodItem {
  String name;
  String imagePathName;

  ChefFoodItem({
    required this.name,
    required this.imagePathName,
  });

  factory ChefFoodItem.fromJson(Map<String, dynamic> json) {
    return ChefFoodItem(name: json['name'], imagePathName: "http://8.134.188.168:82${json['image']}");
  }
}