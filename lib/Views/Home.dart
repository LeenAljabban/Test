import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shapes_test/Button.dart';
import 'package:shapes_test/Controllers/HomeController.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.blue.shade300,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 50.0, horizontal: 20),
                  child: TextField(
                    controller: controller.nameController,
                    decoration: const InputDecoration(
                      hintText: 'Enter your name',
                      hintStyle: TextStyle(fontSize: 20),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 0.5,
                      ),
                    ),
                    onChanged: (_) {
                      controller.name(controller.nameController.text);
                    },
                  ),
                ),
                Obx(
                  () => Text(
                    controller.name.value,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    controller.nameController.clear();
                    controller.name('');
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Clear text',
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                HomeButton(
                  color: Colors.blue.shade900,
                  text: 'Go to page 1',
                  press: () =>
                      Get.toNamed('/Animations', arguments: controller.name),
                ),
                SizedBox(height: 16.0),
                HomeButton(
                  color: Colors.blue.shade300,
                  text: 'Go to page 2',
                  press: () => Get.toNamed('/Pokemons'),
                ),
                SizedBox(height: 16.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
