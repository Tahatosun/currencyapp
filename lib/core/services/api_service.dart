import 'package:currencyapp/core/models/ratesapi_model.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class ApiService {
  String _baseUrl = "https://api.ratesapi.io/api/latest?base=";

  static ApiService _instance = ApiService._privateConstructor();
  ApiService._privateConstructor() {}

  static ApiService getInstance() {
    if (_instance == null) {
      return ApiService._privateConstructor();
    }
    return _instance;
  }

  Future<CurrenyRates> getRates(String base) async {
    var response = await http.get("$_baseUrl$base");
    print("$_baseUrl/$base");
    if (response.statusCode == 200) {
      var jsonResponse = convert.json.decode(response.body);
      print(jsonResponse);
      return CurrenyRates.fromJson(jsonResponse);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}
