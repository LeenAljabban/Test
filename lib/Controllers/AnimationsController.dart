import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Shape.dart';

class AnimationsController extends GetxController {
  Rx<Shape> currentShape = Shape(Colors.purple.shade800, 1).obs;
  String name = '';

  @override
  void onInit() {
    name = Get.arguments.toString();
    super.onInit();
  }

  updateShape(color, shapeType) {
    currentShape.value = Shape(color, shapeType);
  }
}
