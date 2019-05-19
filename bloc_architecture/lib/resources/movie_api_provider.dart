import 'dart:async';
import 'dart:convert';

import 'package:bloc_architecture/resources/secrets/secret.dart';
import 'package:bloc_architecture/resources/secrets/secret_loader.dart';
import 'package:http/http.dart';

import '../models/item_model.dart';

class MovieApiProvider {
  Client client = Client();
  String _apiURL = 'http://api.themoviedb.org/3/movie/popular?api_key=';

  Future<ItemModel> fetchMovieList() async {
    String _apiKey = await getApiKey();
    final response = await client.get("$_apiURL$_apiKey");
    print(response.body.toString());
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

  Future<String> getApiKey() async {
    Secret secret =
        await SecretLoader(secretPath: "assets/resources.secrets.json").load();
    return secret.apiKey;
  }
}
