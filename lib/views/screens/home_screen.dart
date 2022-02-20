import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../enums/enums.dart';
import '../../helper/extensions/context_extensions.dart';
import '../../helper/extensions/string_extension.dart';
import '../../helper/utils/assets_helper.dart';
import '../../helper/utils/constants.dart';
import '../../models/leagues.dart';
import '../../models/prediction.dart';
import '../../models/teams.dart';
import '../../providers/all_providers.dart';
import '../widgets/common_progress_indicator.dart';
import '../widgets/error_response_handler.dart';
import 'match_info_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      drawer: Drawer(
        child: Column(
          children: const [
            Icon(Icons.ac_unit),
          ],
        ),
      ),
      body: Column(
        children: [
          //*app bar
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  DrawerButton(),
                  DateSwitch(),
                ],
              ),
            ),
          ),
          //* content
          Expanded(
            flex: 10,
            child: Column(
              children: const [
                //tabs
                Tabs(),
                //leagues
                LeaguesScroll(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Tabs extends StatelessWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          TabItem(TabItems.all),
          TabItem(TabItems.favourite),
        ],
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  const TabItem(this.tab, {Key? key}) : super(key: key);

  final TabItems tab;

  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
      final _tabProvider = ref.watch(tabStateProvider);
      final currentTab = _tabProvider;
      bool isActive = currentTab == tab;
      Size size = MediaQuery.of(context).size;
      return Expanded(
        child: GestureDetector(
          onTap: () {
            var _tab = ref.read(tabStateProvider.state);
            _tab.state = tab;
          },
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //Text
                Text(
                  tab.modifiedName,
                  style: context.headline5,
                ),
                const Gap(8),
                //bar
                Visibility(
                  visible: isActive,
                  child: Container(
                    width: size.width / 5.5,
                    height: 6.0,
                    decoration: BoxDecoration(
                      color: Constants.primaryColor,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

class DrawerButton extends StatelessWidget {
  const DrawerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      onPressed: () {
        //TODO
        print('show drawer');
      },
      iconData: Icons.menu,
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.onPressed,
    required this.iconData,
  }) : super(key: key);

  final VoidCallback onPressed;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 9.0),
        decoration: BoxDecoration(
          color: context.theme.colorScheme.secondary,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Icon(
          iconData,
          color: Constants.textBlackColor,
          size: 20,
        ),
      ),
    );
  }
}

class DateSwitch extends StatelessWidget {
  const DateSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 5.0),
      decoration: BoxDecoration(
        color: theme.colorScheme.secondary,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Row(
        children: const [
          DateSwitchTab(PredictionDate.today),
          DateSwitchTab(PredictionDate.tomorrow),
        ],
      ),
    );
  }
}

class DateSwitchTab extends StatelessWidget {
  const DateSwitchTab(this.date, {Key? key}) : super(key: key);

  final PredictionDate date;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final _dateTabProvider = ref.watch(predictionDateTabStateProvider);
        final currentDate = _dateTabProvider;
        bool isActive = currentDate == date;
        return GestureDetector(
          onTap: () {
            var _prov = ref.read(predictionDateTabStateProvider.state);
            _prov.state = date;
          },
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: isActive ? Constants.primaryColor : Colors.transparent,
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Text(
              date.name.capitalize,
              style: isActive
                  ? context.headline6.copyWith(color: Colors.white)
                  : context.headline6,
            ),
          ),
        );
      },
    );
  }
}

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
    final favouritePredictions = ref.watch(favouritesPredictionsProvider);
    return SingleChildScrollView(
      child: Column(
        children: favouritePredictions
            .fetchFavourites()
            .map((e) => PredictionTile(e))
            .toList(),
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
          name: 'epl',
          children: leagues == null
              ? []
              : leagues!.epl.map((e) => PredictionTile(e)).toList(),
        ),
        const Gap(8.0),
        CustomExpansionTile(
          assetPath: AssetsHelper.laLigaLogo,
          name: 'laliga',
          children: leagues == null
              ? []
              : leagues!.laliga.map((e) => PredictionTile(e)).toList(),
        ),
        const Gap(8.0),
        CustomExpansionTile(
          assetPath: AssetsHelper.bundesligaLogo,
          name: 'bundesliga',
          children: leagues == null
              ? []
              : leagues!.bundesliga.map((e) => PredictionTile(e)).toList(),
        ),
        const Gap(8.0),
        CustomExpansionTile(
          assetPath: AssetsHelper.seriaALogo,
          name: 'seria A',
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

class CustomBannerAd extends StatelessWidget {
  const CustomBannerAd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: Consumer(
        builder: (ctx, ref, child) {
          final ad = ref.watch(bannerAdsProvider);
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 600),
            switchOutCurve: Curves.easeInBack,
            child: ad.when(
              uninitialized: () => const SizedBox(),
              loading: () => const SizedBox(),
              loaded: (ad) => SizedBox(
                width: ad.size.width.toDouble(),
                height: ad.size.height.toDouble(),
                child: AdWidget(ad: ad),
              ),
              failed: (error) => ErrorResponseHandler.builder(
                error: error,
                stackTrace: null,
                builder: (error) => Text(error.message),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CustomExpansionTile extends StatefulWidget {
  const CustomExpansionTile({
    Key? key,
    required this.name,
    required this.assetPath,
    required this.children,
  }) : super(key: key);

  final String name;
  final String assetPath;
  final List<PredictionTile> children;

  @override
  State createState() => CustomExpansionTileState();
}

class CustomExpansionTileState extends State<CustomExpansionTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: ExpansionTile(
        iconColor: context.theme.scaffoldBackgroundColor,
        textColor: context.theme.scaffoldBackgroundColor,
        backgroundColor: context.theme.primaryColor,
        collapsedIconColor: context.theme.primaryColor,
        collapsedTextColor: context.theme.primaryColor,
        collapsedBackgroundColor: context.theme.scaffoldBackgroundColor,
        title: Text(
          widget.name,
          style: isExpanded
              ? context.headline1
              : context.headline1.copyWith(color: context.theme.primaryColor),
        ),
        leading: Image.asset(
          widget.assetPath,
          height: 40,
          width: 40,
        ),
        children: widget.children
            .map(
              (e) => Container(
                color: context.theme.scaffoldBackgroundColor,
                child: e,
              ),
            )
            .toList(),
        onExpansionChanged: (bool expanding) =>
            setState(() => isExpanded = expanding),
      ),
    );
  }
}

class PredictionTile extends StatelessWidget {
  const PredictionTile(this.prediction, {Key? key}) : super(key: key);

  final Prediction prediction;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    bool _isLoaded = false;
    late InterstitialAd loadedAd;
    return Consumer(
      builder: (context, ref, child) {
        final ad = ref.watch(interstitialAdsProvider);
        ad.maybeWhen(
          loaded: (ad) {
            _isLoaded = true;
            loadedAd = ad;
          },
          orElse: () {
            _isLoaded = false;
          },
        );
        return GestureDetector(
          onTap: () {
            // if (_isLoaded) {
            //   ref
            //       .read(interstitialAdsProvider.notifier)
            //       .showInterstitialAd(loadedAd);
            // }
            Navigator.push<dynamic>(
              context,
              CupertinoPageRoute<dynamic>(
                builder: (context) {
                  return MatchInfoScreen(prediction);
                },
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 35.0),
            height: _size.height / 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      constraints: BoxConstraints(maxWidth: _size.width * 0.20),
                      child: Center(
                        child: Text(
                          '${prediction.details.winner.name}',
                          style: context.headline4,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Text(
                      '${prediction.details.winner.comment?.toLowerCase()}',
                      style: context.headline4,
                    ),
                    Text(
                      'tap for more',
                      maxLines: 2,
                      style: context.headline4.copyWith(
                        fontWeight: FontWeight.w300,
                        color: context.theme.primaryColor.withOpacity(0.7),
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
                const VerticalDivider(
                  color: Constants.dividerColor,
                  thickness: 1.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TeamTile(prediction.teams.home),
                    TeamTile(prediction.teams.away),
                  ],
                ),
                const VerticalDivider(
                  color: Constants.dividerColor,
                  thickness: 1.0,
                ),
                Center(
                  child: FavouriteIcon(prediction),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class TeamTile extends StatelessWidget {
  const TeamTile(this.team, {Key? key}) : super(key: key);

  final Team team;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    double teamLogoSize = 28;
    return SizedBox(
      height: _size.height / 18,
      width: _size.width * 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Builder(
            builder: (context) {
              if (team.logo != null) {
                return Image.network(team.logo!,
                    height: teamLogoSize, width: teamLogoSize);
              }
              return Gap(teamLogoSize, crossAxisExtent: teamLogoSize);
            },
          ),
          const Gap(7),
          Container(
            constraints: BoxConstraints(maxWidth: _size.width * 0.30),
            child: Text(
              team.name ?? '',
              style: context.headline3,
            ),
          ),
        ],
      ),
    );
  }
}

class FavouriteIcon extends StatelessWidget {
  const FavouriteIcon(this.prediction, {Key? key}) : super(key: key);

  final Prediction prediction;

  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
      var _favouritesPredProvider = ref.watch(favouritesPredictionsProvider);

      final isFavourite =
          _favouritesPredProvider.fetchFavourites().contains(prediction);

      return IconButton(
        icon: Icon(isFavourite ? Icons.star : Icons.star_outline),
        color: Constants.primaryColor,
        iconSize: 32.0,
        onPressed: () {
          !isFavourite
              ? _favouritesPredProvider.addToFavourite(prediction)
              : _favouritesPredProvider.removeFromFavourite(prediction);
        },
      );
    });
  }
}
