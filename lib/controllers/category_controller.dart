import 'package:get/get.dart';

class CategogryController extends GetxController {
  RxString _category = ''.obs;

  String get categoryValue => _category.value;
  set updateCategory(String value){
    _category.value = value;
  }
  RxString title = ''.obs;

  String get titleValue => title.value;
  set updateTitle(String value){
    title.value = value;
  }
}