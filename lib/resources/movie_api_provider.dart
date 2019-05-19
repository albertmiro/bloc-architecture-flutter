import 'dart:async';
import 'dart:convert';

import 'package:bloc_architecture/models/trailers_model.dart';
import 'package:bloc_architecture/resources/secrets/secret.dart';
import 'package:bloc_architecture/resources/secrets/secret_loader.dart';
import 'package:http/http.dart';

import '../models/movies_model.dart';

class MovieApiProvider {
  Client client = Client();
  final _baseUrl = "http://api.themoviedb.org/3/movie";

  Future<Movies> fetchMovieList() async {
    String _apiKey = await getApiKey();
    final response = await client.get("$_baseUrl/popular?api_key=$_apiKey");
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return Movies.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

  Future<Trailers> fetchTrailer(int movieId) async {
    String _apiKey = await getApiKey();
    final response =
        await client.get("$_baseUrl/$movieId/videos?api_key=$_apiKey");
    if (response.statusCode == 200) {
      return Trailers.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load trailers');
    }
  }

  Future<String> getApiKey() async {
    Secret secret =
        await SecretLoader(secretPath: "assets/secrets.json").load();
    return secret.apiKey;
  }
}
