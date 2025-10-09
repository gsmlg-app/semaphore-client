import 'package:app_adaptive_widgets/app_adaptive_widgets.dart';
import 'package:app_artwork/app_artwork.dart';
import 'package:app_locale/app_locale.dart';
import 'package:flutter/material.dart';
import 'package:semaphore_client/destination.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'Home Screen';
  static const path = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double w = screenWidth;
    if (screenHeight < screenWidth) {
      w = screenHeight;
    }

    return AppAdaptiveScaffold(
      selectedIndex: Destinations.indexOf(const Key(HomeScreen.name), context),
      onSelectedIndexChange: (idx) => Destinations.changeHandler(idx, context),
      destinations: Destinations.navs(context),
      appBar: AppBar(
        title: Text(context.l10n.appName),
        centerTitle: true,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: (context) => SafeArea(
        child: Center(
          child: SizedBox(
            width: w * 0.618,
            height: w * 0.618,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: Center(
                child: Column(
                  children: [
                    LaddingPageLottie(width: w * 0.382, height: w * 0.382),
                    Text(
                      context.l10n.welcomeHome,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).colorScheme.secondaryContainer,
                      ),
                    ),
                    Text(
                      '$screenWidth x $screenHeight',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).colorScheme.secondaryContainer,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        throw Exception('This is a crash!');
                      },
                      child: Text(
                        'Throw Error',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
