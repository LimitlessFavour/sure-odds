import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sure_odds/providers/all_providers.dart';
import 'package:sure_odds/views/screens/match_info_screen.dart';
import 'package:sure_odds/views/widgets/common_progress_indicator.dart';

import '../../enums/enums.dart';
import '../../helper/extensions/context_extensions.dart';
import '../../helper/extensions/string_extension.dart';
import '../../helper/utils/constants.dart';
import '../../models/leagues.dart';
import '../../models/prediction.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      // backgroundColor: Colors.white,
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

        // color: Colors.red,
      ),
    );
  }
}

class Tabs extends StatelessWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
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
  const TabItem(this.items, {Key? key}) : super(key: key);

  final TabItems items;

  @override
  Widget build(BuildContext context) {
    //TODO change this to provider value
    const currentTabItem = TabItems.all;
    bool isActive = items == currentTabItem;

    return Expanded(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Text
            Text(items.modifiedName),
            const Gap(8),
            //bar
            Visibility(
              visible: isActive,
              child: Container(
                width: 72.0,
                height: 5.0,
                decoration: BoxDecoration(
                  color: Constants.primaryColor,
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 15.0),
      color: Colors.red,
      child: const Icon(Icons.menu),
    );
  }
}

class DateSwitch extends StatelessWidget {
  const DateSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final date = Pro
    final theme = context.theme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 15.0),
      color: theme.primaryColor,
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
    //TODO change this to provider value
    const currentDate = PredictionDate.today;
    bool isActive = currentDate == date;

    return GestureDetector(
      onTap: () {
        setPredictionDate(date);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
        color: isActive ? Constants.primaryColor : Colors.transparent,
        child: Text(
          date.name.capitalize,
          style: context.bodyText1,
        ),
      ),
    );
  }

  void setPredictionDate(PredictionDate date) {
    debugPrint('set prediction date');
  }
}

class LeaguesScroll extends HookConsumerWidget {
  const LeaguesScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      flex: 7,
      child: Builder(
        builder: (context) {
          //TODO change this to provider value
          if (true) return const TodaysLeagueScroll();
          return const TomorrowsLeaguesScroll();
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
            'Network error occured ${error} ${st}',
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
            'Network error occured ${error} ${st}',
            style: context.bodyText1,
          ),
        ),
      ),
    );
  }
}

class LeagueScroll extends StatelessWidget {
  const LeagueScroll({Key? key, required this.leagues}) : super(key: key);

  final Leagues? leagues;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          title: const Text('epl'),
          children: leagues == null
              ? []
              : leagues!.epl.map((e) => PredictionTile(e)).toList(),
        ),
        ExpansionTile(
          title: const Text('laliga'),
          children: leagues == null
              ? []
              : leagues!.laliga.map((e) => PredictionTile(e)).toList(),
        ),
        ExpansionTile(
          title: const Text('bundesliga'),
          children: leagues == null
              ? []
              : leagues!.bundesliga.map((e) => PredictionTile(e)).toList(),
        ),
        ExpansionTile(
          title: const Text(
            'seriaA',
            style: TextStyle(),
          ),
          children: leagues == null
              ? []
              : leagues!.seriaA.map((e) => PredictionTile(e)).toList(),
        ),
      ],
    );
  }
}

class PredictionTile extends StatelessWidget {
  const PredictionTile(this.prediction, {Key? key}) : super(key: key);

  final Prediction prediction;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
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
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        height: _size.height / 4,
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('4:00PM'),
                Text('4:00PM'),
                Text('4:00PM'),
              ],
            ),
            const VerticalDivider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TeamTile(),
                TeamTile(),
              ],
            ),
            const VerticalDivider(),
            Center(
              child: FavouriteIcon(prediction),
            )
          ],
        ),
      ),
    );
  }
}

class TeamTile extends StatelessWidget {
  const TeamTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SizedBox(
      height: _size.height / 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network('https://picsum.photos/id/237/200/300'),
          const Gap(6),
          const Text('Team name'),
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
    bool isAdded = _isAddedInFavourites();
    return IconButton(
      icon: const Icon(Icons.star),
      color: isAdded ? Constants.primaryColor : Colors.white,
      iconSize: 32.0,
      onPressed: _addToFavourites,
    );
  }

  bool _isAddedInFavourites() {
    debugPrint(prediction.toString());
    return true;
  }

  void _addToFavourites() {
    debugPrint('add to favourites');
  }
}
