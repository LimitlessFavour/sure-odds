import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../helper/extensions/context_extensions.dart';
import '../../helper/extensions/string_extension.dart';
import '../../helper/utils/constants.dart';
import '../../models/prediction.dart';
import '../../models/teams.dart';
import '../widgets/buttons/leading_button.dart';
import '../widgets/containers/advice.dart';
import '../widgets/tiles/custom_tile.dart';
import 'home_screen.dart';

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
            child: Container(
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
          Center(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TeamNameLogo(prediction.teams.home),
                  TeamNameLogo(prediction.teams.away),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: ListView(
              padding:
                  const EdgeInsets.only(top: 24.0, left: 10.0, right: 10.0),
              children: [
                Probabilities(prediction.details.percentWinProbability),
                Advice(prediction.details.advice),
                LastFive(prediction.teams),
                const Gap(24),
                TeamsForm(prediction.teams),
                const Gap(32),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Probabilities extends StatelessWidget {
  const Probabilities(this.winProbabilitites, {Key? key}) : super(key: key);

  final Percent winProbabilitites;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width / 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Home win', style: context.headline4),
              const Gap(6.0),
              Text(
                '${winProbabilitites.homeProbability}',
                style: context.headline5,
              ),
            ],
          ),
          // const Gap(6.0),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Draw', style: context.headline4),
              const Gap(6.0),
              Text(
                '${winProbabilitites.drawProbability}',
                style: context.headline5,
              ),
            ],
          ),
          // const Gap(6.0),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Away win', style: context.headline4),
              const Gap(6.0),
              Text(
                '${winProbabilitites.awayProbability}',
                style: context.headline5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}



class LastFive extends StatelessWidget {
  const LastFive(this.teams, {Key? key}) : super(key: key);

  final Teams teams;

  @override
  Widget build(BuildContext context) {
    Last5 homeLast5 = teams.home.last5;
    Last5 awayLast5 = teams.away.last5;
    return Column(
      children: [
        //form
        CustomTile(
          leftValue: homeLast5.formPercentage ?? '',
          label: 'Form',
          rightValue: awayLast5.formPercentage ?? '',
        ),
        //attk
        CustomTile(
          leftValue: homeLast5.attPercentage ?? '',
          label: 'Attack',
          rightValue: awayLast5.attPercentage ?? '',
        ),
        //def
        CustomTile(
          leftValue: homeLast5.defPercentage ?? '',
          label: 'Defence',
          rightValue: awayLast5.defPercentage ?? '',
        ),
        //goals for
        CustomTile(
          leftValue:
              (homeLast5.goalsForAgainst?.goalsFor?.total ?? 0).toString(),
          label: 'Goals for',
          rightValue:
              (awayLast5.goalsForAgainst?.goalsFor?.total ?? 0).toString(),
        ),
        //goals against
        CustomTile(
          leftValue:
              (homeLast5.goalsForAgainst?.goalsAgainst?.total ?? 0).toString(),
          label: 'Goals against',
          rightValue:
              (awayLast5.goalsForAgainst?.goalsAgainst?.total ?? 0).toString(),
        ),
      ],
    );
  }
}

class TeamsForm extends StatelessWidget {
  const TeamsForm(this.teams, {Key? key}) : super(key: key);

  final Teams teams;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Constants.greyColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TeamForm(teams.home),
          TeamForm(teams.away),
        ],
      ),
    );
  }
}

class TeamForm extends StatelessWidget {
  const TeamForm(this.team, {Key? key}) : super(key: key);

  final Team team;

  @override
  Widget build(BuildContext context) {
    double size = 30;
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 4.0),
          child: Image.network(
            team.logo ?? '',
            height: size,
            width: size,
          ),
        ),
        Expanded(
          child: SizedBox(
            height: size,
            child: Center(
              child: ListView(
                padding: const EdgeInsets.all(0),
                scrollDirection: Axis.horizontal,
                children: (team.recentLeagueMatches?.form ?? '')
                    .characters
                    .map((e) => FormBox(e, const Size(27, 22)))
                    .toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FormBox extends StatelessWidget {
  const FormBox(this.formString, this.size, {Key? key}) : super(key: key);

  final String formString;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3.0),
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        color: formString.formColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }
}

class TeamNameLogo extends StatelessWidget {
  const TeamNameLogo(this.team, {Key? key}) : super(key: key);

  final Team team;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.network(team.logo ?? '', height: size.height * 0.08),
        Gap(size.height * 0.015),
        Text(team.name ?? '', style: context.headline4),
      ],
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

