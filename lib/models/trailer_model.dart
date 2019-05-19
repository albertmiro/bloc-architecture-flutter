
import 'package:json_annotation/json_annotation.dart';

part 'trailer_model.g.dart';

@JsonSerializable()
class Trailer {
  String id;
  String iso_639_1;
  String iso_3166_1;
  String key;
  String name;
  String site;
  int size;
  String type;

  Trailer(this.id, this.iso_639_1, this.iso_3166_1, this.key, this.name,
      this.site, this.size, this.type);

  factory Trailer.fromJson(Map<String, dynamic> json) =>
      _$TrailerFromJson(json);

  Map<String, dynamic> toJson() => _$TrailerToJson(this);
}