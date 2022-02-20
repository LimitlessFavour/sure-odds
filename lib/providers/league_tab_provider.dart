import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../enums/enums.dart';

class LeagueTabProvider extends StateNotifier<List<LeaguesEnum>> {
  LeagueTabProvider() : super([]);

  void openTile(LeaguesEnum tile) {
    List<LeaguesEnum> openTiles = state;
    openTiles.add(tile);
    state = openTiles;

    //or
    // state.add(tile);
  }

  void closeTile(LeaguesEnum tile) {
    List<LeaguesEnum> openTiles = state;
    openTiles.remove(tile);
    state = openTiles;

    //or
    // if (state.contains(tile)) {
    //   state.remove(tile);
    // }
  }
}
