// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trailers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trailers _$TrailersFromJson(Map<String, dynamic> json) {
  return Trailers(
      json['id'] as int,
      (json['results'] as List)
          ?.map((e) =>
              e == null ? null : Trailer.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$TrailersToJson(Trailers instance) =>
    <String, dynamic>{'id': instance.id, 'results': instance.results};
