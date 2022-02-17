import 'package:flutter/material.dart';
import 'package:sure_odds/enums/enums.dart';
import 'package:sure_odds/helper/extensions/context_extensions.dart';
import 'package:sure_odds/helper/extensions/string_extension.dart';
import 'package:sure_odds/helper/utils/constants.dart';
import 'package:sure_odds/models/leagues.dart';
import 'package:sure_odds/models/prediction.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  DrawerIcon(),
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
            const SizedBox(height: 8),
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

class DrawerIcon extends StatelessWidget {
  const DrawerIcon({Key? key}) : super(key: key);

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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 15.0),
      color: Constants.lightSkeletonColor,
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

class LeaguesScroll extends StatelessWidget {
  const LeaguesScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO update from provider value
    const leagues = Leagues(epl: [], laliga: [], bundesliga: [], seriaA: []);

    return Expanded(
      flex: 7,
      child: Column(
        children: [
          ExpansionTile(
            title: const Text('epl'),
            children: leagues.epl.map((e) => PredictionTile(e)).toList(),
          ),
          ExpansionTile(
            title: const Text('laliga'),
            children: leagues.epl.map((e) => PredictionTile(e)).toList(),
          ),
          ExpansionTile(
            title: const Text('bundesliga'),
            children: leagues.epl.map((e) => PredictionTile(e)).toList(),
          ),
          ExpansionTile(
            title: const Text('seriaA'),
            children: leagues.epl.map((e) => PredictionTile(e)).toList(),
          ),
        ],
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
    return Container(
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
          const SizedBox(width: 6.0),
          Text('Team name')
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


