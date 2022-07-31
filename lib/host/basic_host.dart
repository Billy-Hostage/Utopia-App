// Billy-Hostage

import 'package:utopia_app/host/host_type.dart';
import 'package:utopia_app/backend/utopia_world.dart';
import 'package:get_it/get_it.dart';
import 'package:utopia_app/host/interface/operation_interface.dart';

import 'package:utopia_app/host/interface/player_interface.dart';
import 'package:utopia_app/host/interface/inventory_interface.dart';
import 'package:utopia_app/model/item_model.dart';

import 'package:utopia_app/change_notifier/player_info_change_notifier.dart';

// This is the basic host for world.
// we just create it on main isolate right here.

class BasicHost {
  UtopiaWorld? _localWorld;

  List<HostType> getSupportedHostTypes() {
    return [HostType.basic];
  }

  bool isWorldCreated() {
    return _localWorld != null;
  }

  // Create new world.
  // this is used to construct a new world from exp pack
  // Note that loading from savefile is defined as 'revive world'
  void createLocalWorld(
      /* TODO required args to create world.
       * eg. exp url 
      */
      ) {
    // actually create it
    _localWorld = UtopiaWorld();

    // Generate all singleton interfaces
    _createInterfaces();

    // create all changenotifier for getit_mixin resposive ui
    _createChangeNotifiers();
  }

  // this is dangerous
  // should only be used in testing
  UtopiaWorld getLocalWorldInstance() {
    return _localWorld!;
  }

  _createInterfaces() {
    if (!isWorldCreated()) return;

    // spawn interfaces
    BasicHostPlayer(world: _localWorld!);
    BasicHostInventory(world: _localWorld!);
  }

  _createChangeNotifiers() {
    // Generate all change notifiers with world
    GetIt.I.registerSingleton(PlayerInfoChangeNotify());
  }
}

class BasicHostPlayer implements PlayerInterface {
  final UtopiaWorld _world;

  BasicHostPlayer({required UtopiaWorld world}) : _world = world {
    // register self
    GetIt.I.registerSingleton<PlayerInterface>(this);
  }

  @override
  int getFameLevel() {
    return _world.getPlayerSubsystem().getPlayerFameLevel();
  }

  @override
  int getFameXp() {
    return _world.getPlayerSubsystem().getPlayerFameXp();
  }

  @override
  String getName() {
    return _world.getPlayerSubsystem().getPlayerName();
  }

  @override
  OperationProcessorInterface getOpProcessor() {
    // TODO: implement getOpProcessor
    throw UnimplementedError();
  }

  @override
  int getRaceLevel() {
    return _world.getPlayerSubsystem().getPlayerRaceLevel();
  }

  @override
  int getRaceXp() {
    return _world.getPlayerSubsystem().getPlayerRaceXp();
  }
}

class BasicHostInventory implements InventoryInterface {
  final UtopiaWorld _world;

  BasicHostInventory({required UtopiaWorld world}) : _world = world {
    // register self
    GetIt.I.registerSingleton<InventoryInterface>(this);
  }

  @override
  int getItemIdAtSlot(int slotId) {
    return _world.getInventorySubsystem().getItemIdAtSlot(slotId);
  }

  @override
  ItemModel? getItemAtSlot(int slotId) {
    // TODO: implement getItemAtSlot
    // get id first, then find item by id in library
    return ItemModel();
  }
}
