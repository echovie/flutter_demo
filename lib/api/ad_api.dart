import './base.dart';
import 'package:dio/dio.dart';

Future adApi() async {
  final dio = DioRequest().dio;
  Response response = await dio.get('/getAllAds');
  return response;
}
