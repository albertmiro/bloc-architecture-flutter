import 'package:bloc_architecture/models/result_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_model.g.dart';

@JsonSerializable()
class ItemModel {
  ItemModel(this.page, this.total_results, this.total_pages, this.results);

  int page;
  int total_results;
  int total_pages;
  List<ResultModel> results = [];

  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$ItemModelToJson(this);
}
