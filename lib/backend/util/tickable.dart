import 'dart:core';

abstract class TickableObject {
  void fixedTick(Duration deltaTime);
}
