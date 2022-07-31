// Billy-Hostage
import 'package:utopia_app/model/outcome_model.dart';

// this model is used to store a operation in exp packs

class OperationModel {
  int id = 0;
  String name = "Cut Tree";
  String desc = "Cutting a Tree now.\nTesting Op.";
  int tickCost = 5;

  //FinalOutcome list
  List<OutcomeModel> outcomes = [];
}
