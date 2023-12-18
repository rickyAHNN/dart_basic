import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';

part '1215.g.dart';

@JsonSerializable(explicitToJson: true)
class Store {
  String address;
  String name;
  String stock;

  Store(this.address, this.name, this.stock);

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

  Map<String, dynamic> toJson() => _$StoreToJson(this);
}
