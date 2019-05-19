import 'package:bloc_architecture/models/trailer_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'trailers_model.g.dart';

@JsonSerializable()
class Trailers {
  int id;
  List<Trailer> results = [];

  Trailers(this.id, this.results);

  factory Trailers.fromJson(Map<String, dynamic> json) =>
      _$TrailersFromJson(json);

  Map<String, dynamic> toJson() => _$TrailersToJson(this);
}
