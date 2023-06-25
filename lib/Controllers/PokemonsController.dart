import 'package:get/get.dart';
import 'package:shapes_test/PokemonModel.dart';

import '../PokemonsService.dart';

class PokemonsController extends GetxController {
  PokemonModel? pokemonModel;
  List<Result> pokemonList = <Result>[];
  var isLoading = false.obs;

  @override
  void onInit() {
    CallgetPokemons();
  }

  CallgetPokemons() async {
    try {
      var data = await PokemonsService.getPokemons();
      if (data != null) {
        pokemonModel = data;
        pokemonList.addAll(pokemonModel!.results);
      } else {
        print('there is a problem');
      }
    } finally {
      isLoading(true);
    }
  }
}
