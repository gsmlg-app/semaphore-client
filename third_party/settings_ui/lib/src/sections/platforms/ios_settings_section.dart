import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:settings_ui/src/tiles/platforms/ios_settings_tile.dart';

class IOSSettingsSection extends StatelessWidget {
  const IOSSettingsSection({
    required this.tiles,
    required this.margin,
    required this.title,
    super.key,
  });

  final List<Widget> tiles;
  final EdgeInsetsDirectional? margin;
  final Widget? title;

  @override
  Widget build(BuildContext context) {
    final theme = SettingsTheme.of(context);
    final isLastNonDescriptive = tiles.last is SettingsTile &&
        (tiles.last as SettingsTile).description == null;
    final textScaler = MediaQuery.of(context).textScaler;

    return Padding(
      padding: margin ??
          EdgeInsets.only(
            top: textScaler.scale(14.0),
            bottom: isLastNonDescriptive
                ? textScaler.scale(27)
                : textScaler.scale(10),
            left: 16,
            right: 16,
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 18,
                bottom: textScaler.scale(5),
              ),
              child: DefaultTextStyle(
                style: TextStyle(
                  color: theme.themeData.titleTextColor,
                  fontSize: Theme.of(context).textTheme.titleMedium?.fontSize,
                ),
                child: title!,
              ),
            ),
          buildTileList(),
        ],
      ),
    );
  }

  Widget buildTileList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: tiles.length,
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        final tile = tiles[index];

        var enableTop = false;

        if (index == 0 ||
            (index > 0 &&
                tiles[index - 1] is SettingsTile &&
                (tiles[index - 1] as SettingsTile).description != null)) {
          enableTop = true;
        }

        var enableBottom = false;

        if (index == tiles.length - 1 ||
            (index < tiles.length &&
                tile is SettingsTile &&
                (tile).description != null)) {
          enableBottom = true;
        }

        return IOSSettingsTileAdditionalInfo(
          enableTopBorderRadius: enableTop,
          enableBottomBorderRadius: enableBottom,
          needToShowDivider: index != tiles.length - 1,
          child: tile,
        );
      },
    );
  }
}
