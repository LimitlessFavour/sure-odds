import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../enums/enums.dart';

class LeagueTabProvider extends StateNotifier<List<LeaguesEnum>> {
  LeagueTabProvider() : super([]);

  void openTile(LeaguesEnum tile) {
    state = [tile];
  }

  void closeTile(LeaguesEnum tile) {
    state = [];
  }
}
