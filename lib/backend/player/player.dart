//Billy-Hostage

import 'package:get_it/get_it.dart';
import 'package:utopia_app/backend/operation/operation_processor.dart';

import 'package:utopia_app/backend/utopia_world.dart';
import 'package:utopia_app/backend/util/lifecycle.dart';

// This is the main class for player infomation

class Player extends Lifecycle {
  /* Player Info */
  String _playerName = "Undefined";
  int _playerRaceLevel = 1;
  int _playerRaceXp = 0;
  int _playerFameLevel = 1;
  int _playerFameXp = 0;

  /* Player Op */
  final OperationProcessor _operationProcessor;

  Player() : _operationProcessor = OperationProcessor() {
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

  // APIs
  // read
  String getPlayerName() {
    return _playerName;
  }

  int getPlayerRaceLevel() {
    return _playerRaceLevel;
  }

  int getPlayerRaceXp() {
    return _playerRaceXp;
  }

  int getPlayerFameLevel() {
    return _playerFameLevel;
  }

  int getPlayerFameXp() {
    return _playerFameXp;
  }

  OperationProcessor getOpProcessor() {
    return _operationProcessor;
  }

  // write
  void updatePlayerName(String newName) {
    _playerName = newName;
    //TODO Trigger changeName event
  }

  void gainRaceXp(int amount) {
    _playerRaceXp += amount;
    //TODO check level up
  }

  void gainFameXp(int amount) {
    _playerFameXp += amount;
    //TODO check level up
  }
}
