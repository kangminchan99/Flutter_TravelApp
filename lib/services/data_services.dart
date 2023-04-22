import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:travel_app/model/data_model.dart';

class DataServices {
  String baseUrl = "http:/mark.bslmeiyu.com/api";
  Future<List<DataModel>> getInfo() async {
    var apiUrl = "/getplaces";
    http.Response res = await http.get(Uri.parse(baseUrl + apiUrl));
    try {
      if (res.statusCode == 200) {
        List<dynamic> list = json.decode(res.body);
        // list.map((e) - 특정 부분, 특정데이터
        return list.map((e) => DataModel.fromJson(e)).toList();
      } else {
        return <DataModel>[];
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return <DataModel>[];
    }
  }
}
