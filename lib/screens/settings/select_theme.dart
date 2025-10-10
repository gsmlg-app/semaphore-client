import 'package:flutter/material.dart';
import 'package:app_adaptive_widgets/gsmlg_adaptive_widgets.dart';
import 'package:semaphore_client/destination.dart';
import 'package:app_feedback/components/setting/root_setting_list.dart';
import 'package:app_utils/app_utils.dart';
import 'package:semaphore_client/screens/settings/settings_screen.dart';

class SettingsSelectTheme extends StatelessWidget {
  static const name = 'Select Theme';
  static const path = 'select_theme';
  static const String fullPath = '${SettingsScreen.path}/$path';
  const SettingsSelectTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return AppAdaptiveScaffold(
      selectedIndex:
          Destinations.indexOf(const Key(SettingsScreen.name), context),
      onSelectedIndexChange: (idx) => Destinations.changeHandler(
            idx,
            context,
          ),
      destinations: Destinations.navs(context),
      body: (context) => SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              title: Text(context.l10n.titleSelectColorTheme),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: const RootSettingList(),
                ),
              ]),
            ),
          ],
        ),
      ),
      largeBody: (context) => SafeArea(
        child: Column(
          children: [
            Text(
              context.l10n.settingsTitle,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: const RootSettingList(),
            ),
          ],
        ),
      ),
      largeSecondaryBody: (_) => SafeArea(
        child: Container(),
      ),
    );
  }
}