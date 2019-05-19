// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movies _$MoviesFromJson(Map<String, dynamic> json) {
  return Movies(
      json['page'] as int,
      json['total_results'] as int,
      json['total_pages'] as int,
      (json['results'] as List)
          ?.map((e) =>
              e == null ? null : Movie.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$MoviesToJson(Movies instance) => <String, dynamic>{
      'page': instance.page,
      'total_results': instance.total_results,
      'total_pages': instance.total_pages,
      'results': instance.results
    };
