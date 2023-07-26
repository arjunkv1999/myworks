import 'package:get/get.dart';
import '';

class ProductController extends GetxController{
  var isLoading = true.obs;
  var productList = [].obs;

  @override
  void onInit(){
     loadproducts();
    super.onInit();
  }

  void loadproducts() async{
    try{
      isLoading(true);
      var product = await HttpService.fetchProducts(); //fetch the list of products from http class
      if(product != null){
        productList.value = product; // now the list having the value and is observable too
      }
    }finally{
      isLoading(false);
    }
  }
}