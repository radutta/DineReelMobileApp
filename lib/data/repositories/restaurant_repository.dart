import 'dart:convert';

import 'package:dinereel/data/const.dart';
import 'package:dinereel/data/repositories.dart';
import 'package:dio/dio.dart';

import '../models/restaurant_data_model.dart';

class RestaurantApi implements AbRestaurant {
  final dio = Dio();
  @override
  Future<RestaurantDataModel> getMenu() async {
    final response =
        await dio.get("${baseUrl}restaurants/outlet/64cf55354a87bd5c1266a0b2");
    if (response.statusCode == 200) {
      var res = response.data;
      var data = RestaurantDataModel.fromJson(jsonDecode(res));

      return data;
    } else {
      throw Exception('Failed to load album');
    }
  }
}
