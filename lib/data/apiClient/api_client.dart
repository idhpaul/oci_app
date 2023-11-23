import 'dart:convert';

import 'package:oci_app/core/app_export.dart';

import 'package:http/http.dart' as http;
import 'package:oci_app/data/sample/sample_text.dart';

class ApiClient {

  static final ApiClient _instance = ApiClient._internal();

  factory ApiClient() {
    return _instance;
  }
  
  ApiClient._internal() {
    // initialization logic 
    print("API Client init");
  }

  Future<http.Response> postTranslate(String content, String sourceLanguageCode, String targetLanguageCode) async {

    final now = DateTime.now();
    final isoDate = now.toIso8601String();

    Map data = {
      "apiVersion":"v1",
      "user" : {
              "userID":"AndroidEmulator-Nexus",
              "userAppVersion":"1.0.0"
      },
      "timestamp":isoDate,
      "data" : {
          "sourceLanguageCode": sourceLanguageCode,
          "targetLanguageCode" : targetLanguageCode,
          "content" : content
      }
    };

    var url = Uri.parse('http://$kHOST_ADDREESS/ai/translate');
    var header = {"Content-Type": "application/json"};
    var body = json.encode(data);

    var response = await http.post(url, headers: header, body: body);


    return response;
  }

  Future<http.Response> getVideo(String videoID) async {

    var url = Uri.parse('http://$kHOST_ADDREESS/ai/video/$videoID');

    var response = await http.get(url);


    return response;
  }

}
