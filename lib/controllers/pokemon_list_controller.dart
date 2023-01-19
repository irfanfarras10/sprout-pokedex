import 'package:get/get.dart';
import 'package:sprout_pokedex/services/pokemon_list_api_service.dart';

enum ViewState {
  loading,
  finish,
  error,
}

class PokemonListController extends GetxController {
  final PokemonListApiService apiService = PokemonListApiService();

  @override
  void onInit() async {
    await apiService.getPokemonListData();
    super.onInit();
  }
}
