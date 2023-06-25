import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/AnimationsController.dart';

class Animations extends StatelessWidget {
  AnimationsController controller = Get.put(AnimationsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        title: const Text(
          'Animations',
        ),
        leading: const BackButton(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            controller.name,
            style: TextStyle(fontSize: 20),
          ),
          Obx(() {
            switch (controller.currentShape.value.shape_type) {
              case 1:
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: AnimatedContainer(
                    height: Get.height * 0.4,
                    duration: const Duration(
                      milliseconds: 300,
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: controller.currentShape.value.color),
                  ),
                );
              case 2:
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: AnimatedContainer(
                    height: Get.height * 0.4,
                    duration: const Duration(
                      milliseconds: 300,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: controller.currentShape.value.color,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                );
              case 3:
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: AnimatedContainer(
                    height: Get.height * 0.4,
                    duration: const Duration(
                      milliseconds: 300,
                    ),
                    decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        color: controller.currentShape.value.color,
                        borderRadius: BorderRadius.circular(200)),
                  ),
                );

              default:
                return Container();
            }
          }),
          // SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => controller.updateShape(Colors.purple.shade800, 1),
                child: Container(
                  width: Get.width * 0.14,
                  height: Get.height * 0.07,
                  color: Colors.purple.shade800,
                ),
              ),
              GestureDetector(
                onTap: () => controller.updateShape(Colors.purple, 2),
                child: Container(
                  width: Get.width * 0.14,
                  height: Get.height * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => controller.updateShape(Colors.purple.shade300, 3),
                child: Container(
                  width: Get.width * 0.14,
                  height: Get.height * 0.07,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple.shade300,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
