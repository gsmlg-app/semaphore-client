import 'package:app_adaptive_widgets/app_adaptive_widgets.dart';{{#has_adaptive_scaffold}}
import 'package:app_locale/app_locale.dart';{{/has_adaptive_scaffold}}
import 'package:flutter/material.dart';{{#has_adaptive_scaffold}}
import 'package:fsemaphore_client/destination.dart';{{/has_adaptive_scaffold}}
{{#has_app_bar}}
import 'package:flutter_bloc/flutter_bloc.dart';{{/has_app_bar}}

class {{name.pascalCase()}}Screen extends StatelessWidget {
  static const name = '{{name.titleCase()}}';
  static const path = '/{{name.paramCase()}}';

  const {{name.pascalCase()}}Screen({super.key});

  @override
  Widget build(BuildContext context) {
    {{#has_adaptive_scaffold}}return AppAdaptiveScaffold(
      selectedIndex: Destinations.indexOf(const Key(name), context),
      onSelectedIndexChange: (idx) => Destinations.changeHandler(
        idx,
        context,
      ),
      destinations: Destinations.navs(context),
      body: (context) => SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            {{#has_app_bar}}SliverAppBar(
              title: Text(context.l10n.{{name.camelCase()}}Title),
            ),{{/has_app_bar}}
            SliverFillRemaining(
              child: Center(
                child: Text(
                  '{{name.titleCase()}} Screen',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
          ],
        ),
      ),
      smallSecondaryBody: AdaptiveScaffold.emptyBuilder,
    );{{/has_adaptive_scaffold}}{{^has_adaptive_scaffold}}return Scaffold(
      {{#has_app_bar}}appBar: AppBar(
        title: const Text('{{name.titleCase()}}'),
      ),{{/has_app_bar}}
      body: const SafeArea(
        child: Center(
          child: Text('{{name.titleCase()}} Screen'),
        ),
      ),
    );{{/has_adaptive_scaffold}}
  }
}