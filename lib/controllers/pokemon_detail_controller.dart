import 'package:get/get.dart';
import 'package:sprout_pokedex/models/pokemon_detail_api_response_model.dart';
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
  PokemonDetailApiResponseModel data = PokemonDetailApiResponseModel();

  @override
  void onInit() async {
    await loadData();
    super.onInit();
  }

  Future<void> loadData() async {
    await apiService.getPokemonDetailData(id).then((apiResponse) {
      print(apiResponse);
      data = PokemonDetailApiResponseModel.fromJson(apiResponse);
      viewState.value = ViewState.finish;
    });
  }
}
