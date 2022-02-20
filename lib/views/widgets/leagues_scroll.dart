import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../enums/enums.dart';
import '../../helper/extensions/context_extensions.dart';
import '../../helper/utils/assets_helper.dart';
import '../../models/leagues.dart';
import '../../providers/all_providers.dart';
import '../screens/home_screen.dart';
import 'ad_widget.dart';
import 'common_progress_indicator.dart';
import 'tiles/custom_expansion_tile.dart';

class LeaguesScroll extends HookConsumerWidget {
  const LeaguesScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _tabProvider = ref.watch(tabStateProvider);
    final _predictionDateTabStateProvider =
        ref.watch(predictionDateTabStateProvider);
    return Expanded(
      flex: 8,
      child: Builder(
        builder: (context) {
          if (_tabProvider == TabItems.all) {
            if (_predictionDateTabStateProvider == PredictionDate.today) {
              return const TodaysLeagueScroll();
            }
            return const TomorrowsLeaguesScroll();
          } else {
            return const FavouriteScroll();
          }
        },
      ),
    );
  }
}

class TodaysLeagueScroll extends HookConsumerWidget {
  const TodaysLeagueScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todaysPredictionsFuture = ref.watch(todayPredictionsProvider);
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 600),
      switchOutCurve: Curves.easeInBack,
      child: todaysPredictionsFuture.when(
        data: (predictionModel) =>
            LeagueScroll(leagues: predictionModel.leagues),
        loading: () =>
            CommonProgressIndicator(color: context.theme.primaryColor),
        error: (error, st) => Center(
          child: Text(
            'Network error occured $error $st',
            style: context.bodyText1,
          ),
        ),
      ),
    );
  }
}

class TomorrowsLeaguesScroll extends HookConsumerWidget {
  const TomorrowsLeaguesScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tomorrowsPredictionsFuture = ref.watch(tomorrowsPredictionsProvider);
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 600),
      switchOutCurve: Curves.easeInBack,
      child: tomorrowsPredictionsFuture.when(
        data: (predictionModel) =>
            LeagueScroll(leagues: predictionModel.leagues),
        loading: () =>
            CommonProgressIndicator(color: context.theme.primaryColor),
        error: (error, st) => Center(
          child: Text(
            'Network error occured $error $st',
            style: context.bodyText1,
          ),
        ),
      ),
    );
  }
}

class FavouriteScroll extends HookConsumerWidget {
  const FavouriteScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favouritePredictions = ref.watch(favouritesProvider);
    return SingleChildScrollView(
      child: Column(
        children: favouritePredictions.map((e) => PredictionTile(e)).toList(),
      ),
    );
  }
}

class LeagueScroll extends StatelessWidget {
  const LeagueScroll({Key? key, required this.leagues}) : super(key: key);

  final Leagues? leagues;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 2.0, left: 10.0, right: 10.0),
      children: [
        CustomExpansionTile(
          assetPath: AssetsHelper.eplLogo,
          name: 'England - Premier League',
          league: LeaguesEnum.epl,
          children: leagues == null
              ? []
              : leagues!.epl.map((e) => PredictionTile(e)).toList(),
        ),
        const Gap(8.0),
        CustomExpansionTile(
          assetPath: AssetsHelper.laLigaLogo,
          name: 'Spain - Laliga',
          league: LeaguesEnum.laliga,
          children: leagues == null
              ? []
              : leagues!.laliga.map((e) => PredictionTile(e)).toList(),
        ),
        const Gap(8.0),
        CustomExpansionTile(
          assetPath: AssetsHelper.bundesligaLogo,
          name: 'Germany - Bundesliga',
          league: LeaguesEnum.bundesliga,
          children: leagues == null
              ? []
              : leagues!.bundesliga.map((e) => PredictionTile(e)).toList(),
        ),
        const Gap(8.0),
        CustomExpansionTile(
          assetPath: AssetsHelper.seriaALogo,
          name: 'Italy - Seria A',
          league: LeaguesEnum.seria,

          children: leagues == null
              ? []
              : leagues!.seriaA.map((e) => PredictionTile(e)).toList(),
        ),
        const Gap(42.0),
        const CustomBannerAd(),
      ],
    );
  }
}