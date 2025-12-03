import 'dart:convert';
import 'package:dio/dio.dart';

class ApiService {
  Dio dio = Dio();
  final String baseUrl = 'https://www.googleapis.com/books/v1/';

  Future<dynamic> get({required String endPoint}) async {
    final response = await dio.get(baseUrl + endPoint);
    if (response.statusCode == 200) {
      return jsonDecode(response.data);
    } else {
      throw Exception(
        'there is a problem with status code ${response.statusCode}',
      );
    }
  }
}
