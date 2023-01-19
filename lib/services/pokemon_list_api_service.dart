import 'package:dio/dio.dart';

final BaseOptions options = BaseOptions(
  baseUrl: 'https://pokeapi.co/api/v2',
  connectTimeout: 5000,
  receiveTimeout: 3000,
);

final Dio httpClient = Dio(options);

class PokemonListApiService {
  Future<dynamic> getPokemonListData() async {
    // await httpClient.get('/pokemon').then((value) {
    //   return value.data;
    // });
    await Future.delayed(Duration(seconds: 10));
  }
}
