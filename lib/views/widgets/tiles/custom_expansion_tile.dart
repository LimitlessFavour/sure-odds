import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../enums/enums.dart';
import '../../../helper/extensions/context_extensions.dart';
import '../../../providers/all_providers.dart';
import '../../screens/home_screen.dart';
import 'app_expansion_tile.dart';

class CustomExpansionTile extends HookConsumerWidget {
  const CustomExpansionTile({
    Key? key,
    required this.name,
    required this.assetPath,
    required this.children,
    required this.league,
  }) : super(key: key);

  final String name;
  final String assetPath;
  final List<PredictionTile> children;
  final LeaguesEnum league;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var _leagueTiles = ref.watch(leagueTileProvider);
    final isExpanded = _leagueTiles.contains(league);
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: AppExpansionTile(
        maintainState: true,
        isExpanded: isExpanded,
        iconColor: context.theme.scaffoldBackgroundColor,
        textColor: context.theme.scaffoldBackgroundColor,
        backgroundColor: context.theme.primaryColor,
        collapsedIconColor: context.theme.primaryColor,
        collapsedTextColor: context.theme.primaryColor,
        collapsedBackgroundColor: context.theme.scaffoldBackgroundColor,
        title: Text(
          name,
          style: isExpanded
              ? context.headline1
              : context.headline1.copyWith(color: context.theme.primaryColor),
        ),
        leading: Image.asset(
          assetPath,
          height: 40,
          width: 40,
        ),
        children: children
            .map(
              (e) => Container(
                color: context.theme.scaffoldBackgroundColor,
                child: e,
              ),
            )
            .toList(),
        onExpansionChanged: (bool expanding) {
          var _leagueTilesState = ref.read(leagueTileProvider.notifier);
          if (expanding) {
            _leagueTilesState.openTile(league);
          } else {
            _leagueTilesState.closeTile(league);
          }
        },
      ),
    );
  }
}
