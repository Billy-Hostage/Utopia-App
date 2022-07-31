//Billy-Hostage

import 'package:get_it/get_it.dart';

import 'package:utopia_app/backend/inventory/inventory_slot.dart';
import 'package:utopia_app/backend/utopia_world.dart';
import 'package:utopia_app/backend/util/lifecycle.dart';

import 'package:utopia_app/model/item_model.dart';

// This is inventory subsystem
// Right now we use a unified inventory only

class Inventory extends Lifecycle {
  List<InventorySlot> _slots = [];

  Inventory() {
    GetIt.I<UtopiaWorld>().lifecycleAwareList.add(this);

    GetIt.I.registerSingleton(this);
  }

  @override
  void onPause() {
    // TODO: implement onPause
  }

  @override
  void onStart(StartType type) {
    // TODO: implement onStart
  }

  @override
  void onStop() {
    // TODO: implement onStop
  }

  int getItemIdAtSlot(int slotId) {
    //TODO Actually find it
    // slotId -> slot -> itemId
    return 0;
  }

  ItemModel getItemAtSlot(int slotId) {
    //TODO Actually find it
    // getItemIdAtSlot -> find Item
    return ItemModel();
  }
}
