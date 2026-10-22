import 'dart:io';

class ApiClient {
  final String baseUrl = "http://8.134.188.168:82/";
  final HttpClient client = HttpClient();

  void dispose() {
    client.close();
  }
}