// Billy-Hostage

import 'asset_model.dart';

enum ItemFlags {
  willExpire,
  consumable,
  equippable,
}

// this can be serialized into a json (or loaded from)
class ItemModel {
  /// Required

  String id = "dev_null";
  List<int> flags = []; // see ItemFlags for actual flags to use
  List<String> tags = [];
  String name = 'Null';
  String desc = 'Testing Item.\n';

  /// End Required

  AssetModel thumbImg = AssetModel.getNone();

  Map<String, dynamic> additionalInfo = {};

  int maxStackCount = 64;

  // Possible Inclustion?
  // int rarity = 0;
}
