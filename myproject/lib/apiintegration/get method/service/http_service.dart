import 'package:http/http.dart' as http;
class HttpService{
  static Future<List<productModel>> fetchProducts() async{
    var response= await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200){
      var data = response.body;
      return productModelFromJson(data);
    }else {
      var data = response.body;
      return productModelFromJson(data);
    }
  }
}