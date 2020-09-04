import 'package:flutter/foundation.dart';
import 'package:manager_tests/hero_model.dart';

class HeroesController extends ChangeNotifier {
  List<HeroModel> heroes = [
    HeroModel(name: 'Thor'),
    HeroModel(name: 'Iron Man'),
    HeroModel(name: 'Batman'),
    HeroModel(name: 'Captain America'),
    HeroModel(name: 'Super Man'),
  ];

  checkFavorite(HeroModel model) {
    model.isFavorite = !model.isFavorite;
    notifyListeners();
  }
}
