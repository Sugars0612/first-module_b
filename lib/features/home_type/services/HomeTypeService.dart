import 'dart:convert';
import 'dart:io';

import 'package:module_b_first/features/home_type/models/FoodType.dart';

class HomeTypeService {
  HttpClient client = HttpClient();
  final String baseUrl = "http://8.134.188.168:82/";
  final String foodsTypePath = "api/foods-type/";

  Future<List<FoodType>> getFoodsType() async {
    try {
      final request =
          await client.getUrl(Uri.parse("${baseUrl}${foodsTypePath}"));

      final response = await request.close();

      if (response.statusCode != HttpStatus.ok) {
        throw HttpException("Http ${response.statusCode}");
      }

      final body = await response.transform(utf8.decoder).join();
      final data = jsonDecode(body);

      return (data as List)
          .map((item) => FoodType(
              id: item['id'], name: item['name'], imagePathname: "${baseUrl}${item['image']}"))
          .toList();
    } on SocketException {
      throw Exception("网络链接失败");
    } on HttpException {
      rethrow;
    } catch (e) {
      throw Exception("请求处理失败: $e");
    }
  }

  void dispose() {
    client.close();
  }
}
