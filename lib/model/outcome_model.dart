// Billy-Hostage

enum OutcomeFailProcess {
  nofail, // when fail, spits out a error in log
  gameover, // just gameover
  anotherOutcome,
}

// A General-purpose outcome model used in mission(quest)/operations or more scenes

class OutcomeModel {
  int grantRaceXp = 100; // can be negative
  int grantFameXp = 100; // can be negative
  int grantHp = 0; // can be negative

  // add and(or) remove item
  List<String> grantItemsId = [];
  List<String> takeawayItemsId = [];

  Map<String, int> grantRelations = {
    // 2nd value can be negative
    "null": 10,
  };

  Map<String, dynamic> startComm = {};

  // fail process
  OutcomeFailProcess failProcess = OutcomeFailProcess.nofail;
  Map<String, dynamic> whenFail = {};
}
