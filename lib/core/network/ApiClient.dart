import 'dart:io';

class ApiClient {
  final String baseUrl = "http://10.0.2.2:9999/";
  final HttpClient client = HttpClient();

  void dispose() {
    client.close();
  }
}