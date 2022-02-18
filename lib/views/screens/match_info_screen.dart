import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sure_odds/enums/enums.dart';
import 'package:sure_odds/helper/extensions/context_extensions.dart';
import 'package:sure_odds/helper/utils/constants.dart';
import 'package:sure_odds/models/prediction.dart';
import 'package:sure_odds/models/teams.dart';
import 'package:sure_odds/views/screens/home_screen.dart';

class MatchInfoScreen extends StatelessWidget {
  const MatchInfoScreen(
    this.prediction, {
    Key? key,
  }) : super(key: key);

  final Prediction prediction;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                children: [
                  const LeadingButton(),
                  FavouriteIcon(prediction),
                ],
              ),
            ),
          ),
          //* content
          Expanded(
            flex: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                //tabs
                Tabs(),
                Gap(8),
                TipBox(),
                Gap(8),
                MatchInfoTabs(),
                Gap(8),
                MatchInfoContent(),
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

class MatchInfoTabs extends StatelessWidget {
  const MatchInfoTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          MatchInfoItem(MatchInfoItems.predictions),
          MatchInfoItem(MatchInfoItems.last_5),
        ],
      ),
    );
  }
}

class MatchInfoItem extends StatelessWidget {
  const MatchInfoItem(this.items, {Key? key}) : super(key: key);

  final MatchInfoItems items;

  @override
  Widget build(BuildContext context) {
    //TODO change this to provider value
    const currentTabItem = MatchInfoItems.predictions;
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

class MatchInfoContent extends StatelessWidget {
  const MatchInfoContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO update from provider value
    const currentTabItem = MatchInfoItems.predictions;
    //TODO update from provider value
    const prediction = Prediction(
      details: PredictionDetails(
        winner: Winner(),
        goals: Goals(),
        percentWinProbability: Percent(),
      ),
      teams: Teams(
        home: Team(last5: Last5(), name: 'name', id: 1),
        away: Team(last5: Last5(), name: 'name2', id: 2),
      ),
    );

    return Expanded(
      flex: 7,
      child: Builder(
        builder: (context) {
          if (currentTabItem == MatchInfoItems.predictions) {
            return PredictionsTab(prediction);
          }
          return Last5Tab(prediction);
        },
      ),
    );
  }
}

class PredictionsTab extends StatelessWidget {
  const PredictionsTab(this.prediction, {Key? key}) : super(key: key);

  final Prediction prediction;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}

class Last5Tab extends StatelessWidget {
  const Last5Tab(this.prediction, {Key? key}) : super(key: key);

  final Prediction prediction;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class TipBox extends StatelessWidget {
  const TipBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width / 1.2,
      height: 50,
      decoration: BoxDecoration(
        color: context.theme.canvasColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Tip: over 3.5'),
          Text('Odds: 2.3'),
        ],
      ),
    );
  }
}

class LeadingButton extends StatelessWidget {
  const LeadingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      iconData: Icons.arrow_back,
      onPressed: () {
        if (Navigator.canPop(context)) Navigator.pop(context);
      },
    );
  }
}
