
import 'dart:math';

import 'package:flutter/widgets.dart';

import '../model/pet.dart';


class MainProvider with ChangeNotifier {
  late Pet _myPet;

  MainProvider() {
    _myPet = new Pet('bobo', Random().nextInt(7)+1, Random().nextInt(11)+6);
  }
}