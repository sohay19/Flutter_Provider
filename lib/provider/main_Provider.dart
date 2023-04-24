
import 'dart:math';

import 'package:flutter/widgets.dart';

import '../model/pet.dart';


class MainProvider with ChangeNotifier {
  late String owner;
  late Pet _myPet;

  MainProvider() {
    _myPet = new Pet('bobo', Random().nextInt(7)+1, Random().nextInt(11)+6);
  }

  Pet get pet => _myPet;
  int get age => _myPet.age;
  int get weight => _myPet.weight;

  addAge() {
    _myPet.age += 1;
    _endProcess();
  }

  subAge() {
    _myPet.age -= 1;
    _endProcess();
  }

  addWeight() {
    _myPet.weight += 1;
    _endProcess();
  }

  subWeight() {
    _myPet.weight -= 1;
    _endProcess();
  }

  _endProcess() {
    notifyListeners();
  }
}