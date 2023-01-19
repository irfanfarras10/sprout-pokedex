import 'package:dio/dio.dart';

final BaseOptions options = BaseOptions(
  baseUrl: 'https://pokeapi.co/api/v2',
  connectTimeout: 5000,
  receiveTimeout: 3000,
);

final Dio httpClient = Dio(options);

class PokemonApiService {
  Future<dynamic> getPokemonListData() async {
    Map<String, dynamic> data = {};
    await httpClient.get('/pokemon?limit=100').then((value) {
      data = value.data;
    });
    return data;
  }

  Future<dynamic> getPokemonDetailData(int id) async {
    Map<String, dynamic> data = {};
    await httpClient.get('/pokemon/$id').then((value) {
      data = value.data;
    });
    return data;
  }
}
