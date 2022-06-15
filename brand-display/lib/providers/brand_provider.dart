import 'package:brand/models/brand_model.dart';
import 'package:flutter/material.dart';

import '../services/brand_service.dart';

class BrandProvider extends ChangeNotifier {
  late brand_model brandModel= brandModel;
  final BrandService _BrandService = BrandService();
  


  tampilkanBrand() async {
    brandModel = await _BrandService.tampikanBrand();
    // ignore: avoid_print
    print(brandModel.data!.length);
     notifyListeners();
  }
  
    BrandProvider()  {
    tampilkanBrand();

  }
}
