import 'package:oci_app/core/app_export.dart';

import 'package:http/http.dart' as http;

class ApiClient {

  static final ApiClient _instance = ApiClient._internal();

  factory ApiClient() {
    return _instance;
  }
  
  ApiClient._internal() {
    // initialization logic 
    print("API Client init");
  }

  Future<http.Response> postTest() async {
    var url = Uri.https('httpbin.org', 'get');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    return response;
  }

}
