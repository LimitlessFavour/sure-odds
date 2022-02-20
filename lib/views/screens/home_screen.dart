import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sure_odds/views/widgets/icons/favourite_icon.dart';

import '../../enums/enums.dart';
import '../../helper/extensions/context_extensions.dart';
import '../../helper/utils/constants.dart';
import '../../models/prediction.dart';
import '../../models/teams.dart';
import '../../providers/all_providers.dart';
import '../widgets/buttons/drawer_button.dart';
import '../widgets/date_switch.dart';
import '../widgets/leagues_scroll.dart';
import '../widgets/navigation_drawer.dart';
import '../widgets/ticker/ticker_builder.dart';
import 'match_info_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return TickerBuilder(
      limitDuration: DateTime.fromMillisecondsSinceEpoch(1646244305321),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: context.theme.scaffoldBackgroundColor,
        drawer: const ScaffoldDrawer(),
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
                  Tabs(),
                  LeaguesScroll(),
                ],
              ),
            ),
          ],
        ),
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
            if (_isLoaded) {
              ref
                  .read(interstitialAdsProvider.notifier)
                  .showInterstitialAd(loadedAd);
            }
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

