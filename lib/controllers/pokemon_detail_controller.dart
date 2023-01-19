import 'package:get/get.dart';
import 'package:sprout_pokedex/services/pokemon_api_service.dart';

enum ViewState {
  loading,
  finish,
  error,
}

class PokemonDetailController extends GetxController {
  final PokemonApiService apiService = PokemonApiService();
  Rx<ViewState> viewState = ViewState.loading.obs;
  int id = int.parse(Get.parameters['id']!);

  @override
  void onInit() async {
    await loadData();
    super.onInit();
  }

  Future<void> loadData() async {
    await apiService.getPokemonDetailData(id).then((apiResponse) {
      print(apiResponse);
    });
  }
}
