import 'package:get/get.dart';
import 'package:sprout_pokedex/services/pokemon_list_api_service.dart';

enum ViewState {
  loading,
  finish,
  error,
}

class PokemonListController extends GetxController {
  final PokemonListApiService apiService = PokemonListApiService();
  Rx<ViewState> viewState = ViewState.loading.obs;

  @override
  void onInit() async {
    await loadData();
    super.onInit();
  }

  Future<void> loadData() async {
    await apiService.getPokemonListData().then((apiResponse) {
      viewState.value = ViewState.finish;
    });
  }
}
