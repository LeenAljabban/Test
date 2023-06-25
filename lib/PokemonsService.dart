import 'package:http/http.dart' as http;
import 'package:shapes_test/PokemonModel.dart';

String baseApi = 'https://pokeapi.co/api/v2/pokemon';

class PokemonsService {
  static getPokemons() async {
    http.Response response = await http.get(Uri.parse(baseApi), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    });

    print(response.body);

    if (response.statusCode == 200) {
      return pokemonModelFromJson(response.body);
    } else
      return null;
  }
}
