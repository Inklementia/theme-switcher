import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:themeswitcher/conf/values/edge_insets_constants.dart';
import 'package:themeswitcher/feature/theme_switcher/mobx/store.dart';
import 'package:themeswitcher/feature/theme_switcher/widgets/history/item.dart';

class ThemeSwicherHistoryList extends StatelessWidget {
  //

  @override
  Widget build(BuildContext context) {
    final store = context.read<ThemeSwitcherStore>();

    return Observer(
      builder: (_) {
        final list = store.historyList.reversed.toList();

        return ListView.builder(
          shrinkWrap: true,
          itemCount: list.length,
          padding: MyEdgeInsets.all16,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final model = list[index];

            return ThemeSwitcherHistoryItem(data: model);
          },
        );
      },
    );
  }
}
