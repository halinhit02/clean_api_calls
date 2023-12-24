import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

mixin HttpDelegate {
  //GET Request
  Future<dynamic> getRequest(String apiUrl, {Map<String, String>? headers}) {
    return _apiCallProcessing(() async {
      final apiResponse = await http.get(Uri.parse(apiUrl),
          headers: headers ?? {'Content-Type': 'application/json'});
      return _responseProcessing(
        apiUrl: apiUrl,
        apiResponse: apiResponse,
      );
    });
  }

  Future<dynamic> postRequest(String apiUrl, Map<String, String> requestBody,
      {Map<String, String>? headers}) {
    return _apiCallProcessing(() async {
      final apiResponse = await http.post(Uri.parse(apiUrl),
          body: jsonEncode(requestBody),
          headers: headers ?? {'Content-Type': 'application/json'});
      return _responseProcessing(
        apiUrl: apiUrl,
        apiResponse: apiResponse,
      );
    });
  }

  dynamic _apiCallProcessing(Function process) {
    try {
      return process;
    } on http.ClientException catch (e) {
      debugPrint('Api call exception => ${e.message}');
      throw HttpException('Client exception: ${e.message}');
    } on IOException catch (e) {
      debugPrint('Api call exception =>${e.toString()}');
      throw const HttpException('Http exception: IOException');
    }
  }

  dynamic _responseProcessing(
      {required String apiUrl, required http.Response apiResponse}) {
    if (apiResponse.statusCode.isServerError() ||
        apiResponse.statusCode.is4xxError()) {
      debugPrint(
          'Api call failed => url = $apiUrl, response code: ${apiResponse.statusCode}');
      throw HttpException('Server error with code ${apiResponse.statusCode}');
    }
    debugPrint(
        'Api call success => url = $apiUrl, response code: ${apiResponse.statusCode}');
    final responseJson = jsonDecode(apiResponse.body);
    return responseJson;
  }
}

extension HttpStatusCode on int {
  bool isServerError() {
    return this == 500;
  }

  bool is4xxError() {
    return this >= 400 && this < 500;
  }
}
