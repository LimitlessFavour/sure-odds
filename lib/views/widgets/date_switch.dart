import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../enums/enums.dart';
import '../../helper/extensions/context_extensions.dart';
import '../../helper/extensions/string_extension.dart';
import '../../helper/utils/constants.dart';
import '../../providers/all_providers.dart';

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
