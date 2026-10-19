import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:module_b_first/features/home/models/Banner.dart';

class HomeService {
  final HttpClient client = HttpClient();
  final String baseUrl = "http://10.0.2.2:9999/";
  // late final String mediaPath = "${baseUrl}";
  final String bannerPath = "api/banners";

  // HomeService({required this.apiClient});

  Future<List<BannerItem>> getBanner() async {
    final request = await client.getUrl(Uri.parse("${baseUrl}${bannerPath}"));

    final response = await request.close();

    final body = await response.transform(utf8.decoder).join();
    final data = jsonDecode(body);

    // for (int i=0; i<data)
    return (data as List)
        .map((item) => BannerItem(
          imagePathName: "${baseUrl}${item['image']}",
          id: item['id']
      )
    ).toList();
  }

  void dispose() {
    client.close();
  }
}
