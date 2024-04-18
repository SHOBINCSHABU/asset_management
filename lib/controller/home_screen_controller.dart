import 'package:asset_management/model/asset_model.dart';
import 'package:hive/hive.dart';

class AssetController {
  static List AssetlistKey = [];
  static var myBox = Hive.box<AssetModel>('AssetBox');



  static checkBox(var key, AssetModel assetModel) async {
    await myBox.put(key, AssetModel(
      name: "name", 
      description: "description", 
      serialNumber: "serialNumber"));
    // initKey();
  }
}
