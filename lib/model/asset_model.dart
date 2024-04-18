import 'package:hive/hive.dart';

class AssetModel {
  @HiveField(0)
  String name;
  @HiveField(1)
  String description;
  @HiveField(2)
  String serialNumber;

  AssetModel({
    required this.name,
    required this.description,
    required this.serialNumber
  });
}