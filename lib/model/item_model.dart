// Billy-Hostage

enum ItemFlags {
  willExpire,
  consumable,
  equippable,
}

// this can be serialized into a json (or loaded from)
class ItemModel {
  int id = 0;
  int flags = 0; // see ItemFlags for actual flags to use
  String name = 'Null';
  String desc = 'Testing Item.\n';

  // json sub map
  Map<String, dynamic> additionalInfo = {};

  // Possible Inclustion?
  // int rarity = 0;
}
