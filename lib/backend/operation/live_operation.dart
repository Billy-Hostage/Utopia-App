//Billy-Hostage

// This indicates a live op
// can be paused, but its registered as live

enum LiveOpState {
  noinit,
  ticking,
  paused,
}

class LiveOperation {
  String operationName = "Undefine";
  int totalTicksRequired = 10;
  int ticked = 0;
  LiveOpState state = LiveOpState.noinit;
}
