import 'package:dio/dio.dart';
import 'package:brand/models/brand_model.dart';

class BrandService {
  Future<brand_model> tampikanBrand() async {
    try{
    var response = await Dio().get(
      'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline');
    return brand_model.fromJson({"data":response.data});
    }on DioError catch (e){
            // ignore: avoid_print
      print(e);
    return brand_model.fromJson({});
  }
    }
}
