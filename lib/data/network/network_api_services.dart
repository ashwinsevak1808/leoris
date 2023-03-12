import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:leories/data/app_exception.dart';
import 'package:leories/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApi extends BaseApiServices {
  @override
  Future getApiResponse(String url) async {
    dynamic responseJson;

    try {
      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }

    return responseJson;
  }

  @override
  Future getPostApiResponse(String url, data) async {
    dynamic responseJson;

    try {
      Response response = await post(Uri.parse(url), body: data).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }

    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    var res = response.statusCode;

    if (res == 200) {
      dynamic responseJson = jsonDecode(response.body);
      return responseJson;
    } else if (res == 400) {
      throw BadRequestException(response.body.toString());
    } else if (res == 404) {
      throw UnauthorizedException(response.body.toString());
    } else {
      throw FetchDataException("Error occored while communicating with the server" "with status code ${response.statusCode.toString()}");
    }
  }
}
