import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../enums/enums.dart';
import '../../../helper/extensions/context_extensions.dart';
import '../../../helper/utils/assets_helper.dart';
import '../../../providers/all_providers.dart';

class DrawerTiles extends StatelessWidget {
  const DrawerTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 14.0),
      padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 17.0),
      decoration: BoxDecoration(
        color: context.theme.colorScheme.secondary,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child: Text(
              'Leagues',
              style: context.headline2.copyWith(fontWeight: FontWeight.normal),
            ),
          ),
          const Gap(14),
          const DrawerListTile(
            leadingImage: AssetsHelper.eplLogo,
            title: 'Premier League',
            league: LeaguesEnum.epl,
          ),
          const Gap(14),
          const DrawerListTile(
            leadingImage: AssetsHelper.laLigaLogo,
            title: 'Laliga',
            league: LeaguesEnum.laliga,
          ),
          const Gap(14),
          const DrawerListTile(
            leadingImage: AssetsHelper.bundesligaLogo,
            title: 'Bundesliga',
            league: LeaguesEnum.bundesliga,
          ),
          const Gap(14),
          const DrawerListTile(
            leadingImage: AssetsHelper.seriaALogo,
            title: 'Seria A',
            league: LeaguesEnum.seria,
          ),
          const Gap(14),
         const DrawerListTile(
            leadingImage: AssetsHelper.ligueOneLogo,
            title: 'Ligue One',
            league: LeaguesEnum.ligue1,
          ),
          const Gap(8.0),
          const DrawerListTile(
            leadingImage: AssetsHelper.primeriaLogo,
            title: 'Primeria Liga',
            league: LeaguesEnum.primerialiga,
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends HookConsumerWidget {
  const DrawerListTile({
    Key? key,
    required this.league,
    required this.leadingImage,
    required this.title,
  }) : super(key: key);

  final LeaguesEnum league;
  final String leadingImage;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var _leagueTiles = ref.watch(leagueTileProvider);
    final isOpen = _leagueTiles.contains(league);
    return Container(
      decoration: BoxDecoration(
        color: isOpen ? context.theme.primaryColor : Colors.transparent,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: ListTile(
        leading: Image.asset(
          leadingImage,
          height: 40,
          width: 40,
        ),
        title: Text(
          title,
          style: context.headline1.copyWith(
            color:
                !isOpen ? context.theme.primaryColor : context.headline1.color,
          ),
        ),
        onTap: () {
          var _leagueTilesState = ref.read(leagueTileProvider.notifier);
          !isOpen
              ? _leagueTilesState.openTile(league)
              : _leagueTilesState.closeTile(league);
        },
      ),
    );
  }
}
