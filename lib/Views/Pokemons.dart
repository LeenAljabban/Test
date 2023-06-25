import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shapes_test/Controllers/PokemonsController.dart';

class Pokemons extends GetView<PokemonsController> {
  const Pokemons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isLoading.value
          ? Scaffold(
              appBar: AppBar(
                title: const Text('Pokemons'),
                backgroundColor: Colors.blue.shade300,
                leading: const BackButton(),
              ),
              body: ListView.builder(
                  itemCount: controller.pokemonList.length,
                  itemBuilder: (_, index) {
                    final id = controller.pokemonList[index].url.split('/')[6];
                    return Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 13),
                          height: Get.height * 0.15,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400,
                                blurRadius: 5.0,
                              )
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(120, 10, 10, 10),
                            child: Text(
                              controller.pokemonList[index].name,
                              style: const TextStyle(
                                fontSize: 19.0,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 25,
                          bottom: 25,
                          right: 280,
                          left: 25,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SvgPicture.network(
                              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/$id.svg',
                              // fit: BoxFit.fitWidth,
                            ),
                          ),
                        )
                      ],
                    );
                  }),
            )
          : const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
    );
  }
}
