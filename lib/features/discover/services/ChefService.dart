import 'dart:convert';
import 'dart:io';

import 'package:module_b_first/features/discover/models/ChefFoodItem.dart';
import 'package:module_b_first/features/discover/models/ChefItem.dart';

class ChefService {
  HttpClient client = HttpClient();
  String baseUrl = "http://10.0.2.2:9999/";
  String chefPath = "api/chefs/";

  Future<List<ChefItem>> getChefs() async {
    try {
      final request = await client.getUrl(Uri.parse("${baseUrl}${chefPath}"));

      final response = await request.close();

      if (response.statusCode != HttpStatus.ok) {
        throw HttpException("HTTP: ${response.statusCode}");
      }

      final body = await response.transform(utf8.decoder).join();
      final data = jsonDecode(body);

      return (data as List)
          .map(
            (item) => ChefItem(
              id: item['id'],
              name: item['name'],
              avatarPathname: "${baseUrl}${item['avatar']}",
              rating: item['rating'],
              introduce: item['introduction'],
              foods: (item['foods'] as List)
                  .map((food) => ChefFoodItem.fromJson(food))
                  .toList(),
            ),
          )
          .toList();
    } catch (e) {
      throw Exception("请求处理失败: $e");
    }
  }
}
