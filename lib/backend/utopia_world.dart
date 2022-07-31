// Billy-Hostage

import 'package:get_it/get_it.dart';
import 'package:utopia_app/backend/inventory/inventory.dart';
import 'package:utopia_app/backend/operation/operation_processor.dart';
import 'package:utopia_app/backend/player/player.dart';

import 'util/tickable.dart';
import 'util/lifecycle.dart';

/*
 * This is the main World obj used as backend system 
 * Whitch connects everything
*/

import 'dart:async';

enum WorldStatus {
  none,
  running,
  paused,
}

class UtopiaWorld {
  WorldStatus _status = WorldStatus.none;
  WorldStatus get status => _status;

  Timer? _tickTimer;
  final Duration _fixedTickTime = const Duration(seconds: 1);

  List<TickableObject> tickableList = [];
  List<Lifecycle> lifecycleAwareList = [];

  int _totalTickCounter = 0;

  UtopiaWorld() {
    // this is only used to help other subsystems
    GetIt.I.registerSingleton(this);

    _spawnSubSystems();
  }

  Future<bool> ping() async {
    return _status != WorldStatus.none;
  }

  void resume() {
    if (_status == WorldStatus.running) return;

    _status = WorldStatus.running;

    for (Lifecycle obj in lifecycleAwareList) {
      obj.onStart(StartType.resume);
    }
    _tickTimer = Timer.periodic(_fixedTickTime, tickWorld);
  }

  void tickWorld(Timer timer) {
    for (TickableObject obj in tickableList) {
      obj.fixedTick(_fixedTickTime);
    }
    _totalTickCounter++;
  }

  void pause() {
    if (_status != WorldStatus.running) return;

    _tickTimer?.cancel();
    _status = WorldStatus.paused;

    for (Lifecycle obj in lifecycleAwareList) {
      obj.onPause();
    }
  }

  void _spawnSubSystems() {
    Player();
    Inventory();
  }

  Player getPlayerSubsystem() {
    return GetIt.I<Player>();
  }

  Inventory getInventorySubsystem() {
    return GetIt.I<Inventory>();
  }

  int getTotalTickCounter() {
    return _totalTickCounter;
  }
}
