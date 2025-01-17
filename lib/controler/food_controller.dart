import 'package:get/get.dart';
import 'package:latihan_1/model/food.dart';
import 'package:latihan_1/view/page/detail.dart';

class FoodController extends GetxController{

  void openDetailsPage(food item){
    Get.to(DetailPage(item: item)); 
  }


  
}
