import 'package:get/get.dart';
import 'package:shapes_test/Controllers/PokemonsController.dart';

class PokemonsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PokemonsController(), fenix: true);
  }
}
