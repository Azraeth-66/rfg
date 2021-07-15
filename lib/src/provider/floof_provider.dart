
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:rfg/src/models/floof_model.dart';

class FloofProvider{
  final String _url='https://randomfox.ca/floof/';
  final http = Dio();

  Future<String> generarFloof() async{
      final response = await http.get(_url);
      FloofModel floofModel = FloofModel.fromJson(response.data);
      return floofModel.image;
  }
}