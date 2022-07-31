//Billy-Hostage

import 'package:get_it/get_it.dart';

import 'package:utopia_app/backend/operation/live_operation.dart';
import 'package:utopia_app/backend/util/lifecycle.dart';
import 'package:utopia_app/backend/util/tickable.dart';
import 'package:utopia_app/backend/utopia_world.dart';

// This is the core of operations
// Will become very complex later
// every characted (including player) will have one of this.

class OperationProcessor implements Lifecycle, TickableObject {
  List<LiveOperation> _liveOps = [];

  OperationProcessor() {
    GetIt.I<UtopiaWorld>().lifecycleAwareList.add(this);
    GetIt.I<UtopiaWorld>().tickableList.add(this);
  }

  @override
  void fixedTick(Duration deltaTime) {
    // TODO: implement fixedTick
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
}
