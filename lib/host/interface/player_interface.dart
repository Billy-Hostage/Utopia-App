// Billy-Hostage

import 'package:utopia_app/host/interface/operation_interface.dart';

class PlayerInterface {
  int getRaceXp() {
    return 0;
  }

  int getFameXp() {
    return 0;
  }

  int getRaceLevel() {
    return 1;
  }

  int getFameLevel() {
    return 1;
  }

  String getName() {
    return "Newbie";
  }

  OperationProcessorInterface getOpProcessor() {
    return OperationProcessorInterface();
  }

  // TODO more
}
