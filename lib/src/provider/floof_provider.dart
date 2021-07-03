
import 'package:dio/dio.dart';
import 'package:rfg/src/models/floof_model.dart';

class FloofProvider{
  final String _url='https://randomfox.ca/floof/';
  final http = Dio();

  Future<List<FloofModel>> generarFloof() async{
    final response = await http.get(_url);
    List<dynamic> responseData = response.data;
    return responseData.map((floof){
      return FloofModel.fromJson(floof);
    }).toList();
  }
}