import 'package:flutter/material.dart';
import 'package:settings_ui/src/utils/settings_theme.dart';

class AndroidSettingsSection extends StatelessWidget {
  const AndroidSettingsSection({
    required this.tiles,
    required this.margin,
    this.title,
    super.key,
  });

  final List<Widget> tiles;
  final EdgeInsetsDirectional? margin;
  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return buildSectionBody(context);
  }

  Widget buildSectionBody(BuildContext context) {
    final theme = SettingsTheme.of(context);
    final textScaler = MediaQuery.of(context).textScaler;
    final tileList = buildTileList();

    if (title == null) {
      return tileList;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(
            top: textScaler.scale(24),
            bottom: textScaler.scale(10),
            start: 24,
            end: 24,
          ),
          child: DefaultTextStyle(
            style: TextStyle(
              color: theme.themeData.titleTextColor,
              fontSize: Theme.of(context).textTheme.titleMedium?.fontSize,
            ),
            child: title!,
          ),
        ),
        Container(
          color: theme.themeData.settingsSectionBackground,
          child: tileList,
        ),
      ],
    );
  }

  Widget buildTileList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: tiles.length,
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return tiles[index];
      },
    );
  }
}
