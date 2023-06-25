import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late TextEditingController nameController;
  RxString name = 'Your Name'.obs;

  @override
  void onInit() {
    nameController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    nameController.dispose();
    super.onClose();
  }
}
