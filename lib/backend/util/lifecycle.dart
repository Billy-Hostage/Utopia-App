import 'dart:core';

enum StartType {
  startNew,
  loadSave,
  resume,
  dummy,
}

abstract class Lifecycle {
  void onStart(StartType type);
  void onStop();
  void onPause();
}
