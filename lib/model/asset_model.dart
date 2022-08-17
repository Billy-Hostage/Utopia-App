// Billy-Hostage

enum AssetType {
  none,
  image,
  audio,
}

class AssetModel {
  AssetType _type = AssetType.none;

  get assetType => _type;

  AssetModel.getNone() {
    _type = AssetType.none;
  }
}
