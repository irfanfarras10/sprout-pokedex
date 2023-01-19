import 'package:dio/dio.dart';

final BaseOptions options = BaseOptions(
  baseUrl: 'https://pokeapi.co/api/v2',
  connectTimeout: 5000,
  receiveTimeout: 3000,
);

final Dio httpClient = Dio(options);

class PokemonListApiService {
  Future<dynamic> getPokemonListData() async {
    Map<String, dynamic> data = {};
    await httpClient.get('/pokemon?limit=50').then((value) {
      data = value.data;
    });
    return data;
  }
}
