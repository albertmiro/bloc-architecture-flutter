import 'package:bloc_architecture/models/movie_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movies_model.g.dart';

@JsonSerializable()
class Movies {
  Movies(this.page, this.total_results, this.total_pages, this.results);

  int page;
  int total_results;
  int total_pages;
  List<Movie> results = [];

  factory Movies.fromJson(Map<String, dynamic> json) =>
      _$MoviesFromJson(json);

  Map<String, dynamic> toJson() => _$MoviesToJson(this);
}
