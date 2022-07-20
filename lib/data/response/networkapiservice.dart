import 'dart:convert';
import 'dart:io';
import 'package:mvvm_practice/data/app_exceptions.dart';
import 'package:mvvm_practice/data/response/base_api_service.dart';
import 'package:http/http.dart' as http;

class NetworkApiService extends BaseApiService {
  // getApiResponse method from abstract class
  // this method handle the get request of api

  @override
  Future getApiResponse(String url) async {
    dynamic jsonResponse;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      jsonResponse = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Exception');
    }

    return jsonResponse;
  }

  @override
  Future postApiResponse(String url, dynamic data) async {
    dynamic jsonResponse;
    try {
     http.Response response = await http.post(
        Uri.parse(url),
        body:data
      );
          
      jsonResponse = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Exception');
    }

    return jsonResponse;
  }
  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 404:
        throw UnauthorisedException(response.body.toString());
      default:
        throw BadRequestException(
            'Error accrued while communication with server');
    }
  }
}
