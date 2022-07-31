// Billy-Hostage

import 'package:utopia_app/model/item_model.dart';

// This is the basic interface for global inventory on client-side

class InventoryInterface {
  int getItemIdAtSlot(int slotId) {
    return -1;
  }

  ItemModel? getItemAtSlot(int slotId) {
    return null;
  }
}
