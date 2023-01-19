import 'package:get/get.dart';
import 'package:sprout_pokedex/models/pokemon_list_api_response_model.dart';
import 'package:sprout_pokedex/services/pokemon_list_api_service.dart';

enum ViewState {
  loading,
  finish,
  error,
}

class PokemonListController extends GetxController {
  final PokemonListApiService apiService = PokemonListApiService();
  Rx<ViewState> viewState = ViewState.loading.obs;
  PokemonListApiResponseModel data = PokemonListApiResponseModel();

  @override
  void onInit() async {
    await loadData();
    super.onInit();
  }

  Future<void> loadData() async {
    await apiService.getPokemonListData().then((apiResponse) {
      viewState.value = ViewState.finish;
      print(apiResponse);
      data = PokemonListApiResponseModel.fromJson(apiResponse);
    });
  }
}
