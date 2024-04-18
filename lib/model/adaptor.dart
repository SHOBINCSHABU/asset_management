import 'package:asset_management/model/asset_model.dart';
import 'package:hive/hive.dart';

class AssetModelAdaptor extends TypeAdapter<AssetModel> {
  @override
  final int typeId = 1;

  @override
  AssetModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AssetModel(
      name: fields[0] as String,
      description: fields[1] as String,
      serialNumber: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AssetModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.serialNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AssetModelAdaptor &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
