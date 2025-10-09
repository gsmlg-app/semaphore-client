import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

export 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

class AppAdaptiveScaffold extends StatelessWidget {
  static const appSmallBreakpoint = Breakpoints.small;
  static const appMediumBreakpoint = Breakpoints.medium;
  static const appMediumLargeBreakpoint = Breakpoints.mediumLarge;
  static const appLargeBreakpoint = Breakpoints.large;
  static const appExtraLargeBreakpoint = Breakpoints.extraLarge;
  static const appDrawerBreakpoint = Breakpoints.smallDesktop;

  /// The destinations to be used in navigation items. These are converted to
  /// [NavigationRailDestination]s and [BottomNavigationBarItem]s and inserted
  /// into the appropriate places. If passing destinations, you must also pass a
  /// selected index to be used by the [NavigationRail].
  final List<NavigationDestination> destinations;

  /// The index to be used by the [NavigationRail].
  final int? selectedIndex;

  /// Option to display a leading widget at the top of the navigation rail
  /// at the middle breakpoint.
  final Widget? leadingUnextendedNavRail;

  /// Option to display a leading widget at the top of the navigation rail
  /// at the largest breakpoint.
  final Widget? leadingExtendedNavRail;

  /// Option to display a trailing widget below the destinations of the
  /// navigation rail at the largest breakpoint.
  final Widget? trailingNavRail;

  /// Option to apply custom padding to the navigation rail.
  final EdgeInsetsGeometry navigationRailPadding;

  /// The alignment of the destinations in the navigation rail.
  final double? groupAlignment;

  /// Widget to be displayed in the body slot at the smallest breakpoint.
  ///
  /// If nothing is entered for this property, then the default [body] is
  /// displayed in the slot. If null is entered for this slot, the slot stays
  /// empty.
  final WidgetBuilder? smallBody;

  /// Widget to be displayed in the body slot at the medium breakpoint.
  ///
  /// The default displayed body.
  final WidgetBuilder? body;

  /// Widget to be displayed in the body slot at the mediumLarge breakpoint.
  ///
  /// If nothing is entered for this property, then the default [body] is
  /// displayed in the slot. If null is entered for this slot, the slot stays
  /// empty.
  final WidgetBuilder? mediumLargeBody;

  /// Widget to be displayed in the body slot at the large breakpoint.
  ///
  /// If nothing is entered for this property, then the default [body] is
  /// displayed in the slot. If null is entered for this slot, the slot stays
  /// empty.
  final WidgetBuilder? largeBody;

  /// Widget to be displayed in the body slot at the extraLarge breakpoint.
  ///
  /// If nothing is entered for this property, then the default [body] is
  /// displayed in the slot. If null is entered for this slot, the slot stays
  /// empty.
  final WidgetBuilder? extraLargeBody;

  /// Widget to be displayed in the secondaryBody slot at the compact
  /// breakpoint.
  ///
  /// If nothing is entered for this property, then the default [secondaryBody]
  /// is displayed in the slot. If null is entered for this slot, the slot stays
  /// empty.
  final WidgetBuilder? smallSecondaryBody;

  /// Widget to be displayed in the secondaryBody slot at the medium breakpoint.
  ///
  /// The default displayed secondaryBody.
  final WidgetBuilder? secondaryBody;

  /// Widget to be displayed in the secondaryBody slot at the mediumLarge
  /// breakpoint.
  ///
  /// If nothing is entered for this property, then the default [secondaryBody]
  /// is displayed in the slot. If null is entered for this slot, the slot stays
  /// empty.
  final WidgetBuilder? mediumLargeSecondaryBody;

  /// Widget to be displayed in the secondaryBody slot at the large
  /// breakpoint.
  ///
  /// If nothing is entered for this property, then the default [secondaryBody]
  /// is displayed in the slot. If null is entered for this slot, the slot stays
  /// empty.
  final WidgetBuilder? largeSecondaryBody;

  /// Widget to be displayed in the secondaryBody slot at the extraLarge
  /// breakpoint.
  ///
  /// If nothing is entered for this property, then the default [secondaryBody]
  /// is displayed in the slot. If null is entered for this slot, the slot stays
  /// empty.
  final WidgetBuilder? extraLargeSecondaryBody;

  /// Defines the fractional ratio of body to the secondaryBody.
  ///
  /// For example 0.3 would mean body takes up 30% of the available space and
  /// secondaryBody takes up the rest.
  ///
  /// If this value is null, the ratio is defined so that the split axis is in
  /// the center of the screen.
  final double? bodyRatio;

  /// The breakpoint defined for the compact size, associated with mobile-like
  /// features.
  ///
  /// Defaults to [Breakpoints.small].
  final Breakpoint smallBreakpoint;

  /// The breakpoint defined for the medium size, associated with tablet-like
  /// features.
  ///
  /// Defaults to [Breakpoints.medium].
  final Breakpoint mediumBreakpoint;

  /// The breakpoint defined for the mediumLarge size, associated with desktop-like
  /// features.
  ///
  /// Defaults to [Breakpoints.mediumLarge].
  final Breakpoint mediumLargeBreakpoint;

  /// The breakpoint defined for the large size, associated with desktop-like
  /// features.
  ///
  /// Defaults to [Breakpoints.large].
  final Breakpoint largeBreakpoint;

  /// The breakpoint defined for the extraLarge size, associated with ultra-wide
  /// features.
  ///
  /// Defaults to [Breakpoints.extraLarge].
  final Breakpoint extraLargeBreakpoint;

  /// Whether or not the developer wants the smooth entering slide transition on
  /// secondaryBody.
  ///
  /// Defaults to true.
  final bool internalAnimations;

  /// Defines the duration of transition between layouts.
  ///
  /// Defaults to [Duration(seconds: 1)].
  final Duration transitionDuration;

  /// The orientation of the body and secondaryBody. Either horizontal (side by
  /// side) or vertical (top to bottom).
  ///
  /// Defaults to Axis.horizontal.
  final Axis bodyOrientation;

  /// Whether to use a [Drawer] over a [BottomNavigationBar] when not on mobile
  /// and Breakpoint is small.
  ///
  /// Defaults to true.
  final bool useDrawer;

  /// Option to override the drawerBreakpoint for the usage of [Drawer] over the
  /// usual [BottomNavigationBar].
  ///
  /// Defaults to [Breakpoints.smallDesktop].
  final Breakpoint drawerBreakpoint;

  /// An optional [Breakpoint] which overrides the [appBar] breakpoint to display
  /// an [AppBar] without depending on the drawer visibility.
  ///
  /// By default, an [AppBar] will show on [Breakpoints.smallDesktop] if [useDrawer] is set
  /// to true.
  final Breakpoint? appBarBreakpoint;

  /// Option to override the default [AppBar] when using drawer in desktop
  /// small.
  final PreferredSizeWidget? appBar;

  /// Callback function for when the index of a [NavigationRail] changes.
  final void Function(int)? onSelectedIndexChange;

  /// The width used for the internal [NavigationRail] at the medium [Breakpoint].
  final double navigationRailWidth;

  /// The width used for the internal extended [NavigationRail] at the large
  /// [Breakpoint].
  final double extendedNavigationRailWidth;

  /// Used to map NavigationDestination to NavigationRailDestination.
  final NavigationRailDestinationBuilder? navigationRailDestinationBuilder;

  const AppAdaptiveScaffold({
    super.key,
    required this.destinations,
    this.selectedIndex = 0,
    this.leadingUnextendedNavRail,
    this.leadingExtendedNavRail,
    this.trailingNavRail,
    this.navigationRailPadding =
        const EdgeInsets.all(kNavigationRailDefaultPadding),
    this.smallBody,
    this.body,
    this.mediumLargeBody,
    this.largeBody,
    this.extraLargeBody,
    this.smallSecondaryBody,
    this.secondaryBody,
    this.mediumLargeSecondaryBody,
    this.largeSecondaryBody,
    this.extraLargeSecondaryBody,
    this.bodyRatio,
    this.smallBreakpoint = appSmallBreakpoint,
    this.mediumBreakpoint = appMediumBreakpoint,
    this.mediumLargeBreakpoint = appMediumLargeBreakpoint,
    this.largeBreakpoint = appLargeBreakpoint,
    this.extraLargeBreakpoint = appExtraLargeBreakpoint,
    this.drawerBreakpoint = appDrawerBreakpoint,
    this.internalAnimations = true,
    this.transitionDuration = const Duration(milliseconds: 0),
    this.bodyOrientation = Axis.horizontal,
    this.onSelectedIndexChange,
    this.useDrawer = false,
    this.appBar,
    this.navigationRailWidth = 72,
    this.extendedNavigationRailWidth = 192,
    this.appBarBreakpoint,
    this.navigationRailDestinationBuilder,
    this.groupAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      destinations: destinations,
      selectedIndex: selectedIndex,
      leadingUnextendedNavRail: leadingUnextendedNavRail,
      leadingExtendedNavRail: leadingExtendedNavRail,
      trailingNavRail: trailingNavRail,
      navigationRailPadding: navigationRailPadding,
      smallBody: smallBody,
      body: body,
      mediumLargeBody: mediumLargeBody,
      largeBody: largeBody,
      extraLargeBody: extraLargeBody,
      smallSecondaryBody: smallSecondaryBody,
      secondaryBody: secondaryBody,
      mediumLargeSecondaryBody: mediumLargeSecondaryBody,
      largeSecondaryBody: largeSecondaryBody,
      extraLargeSecondaryBody: extraLargeSecondaryBody,
      bodyRatio: bodyRatio,
      smallBreakpoint: smallBreakpoint,
      mediumBreakpoint: mediumBreakpoint,
      mediumLargeBreakpoint: mediumLargeBreakpoint,
      largeBreakpoint: largeBreakpoint,
      extraLargeBreakpoint: extraLargeBreakpoint,
      drawerBreakpoint: drawerBreakpoint,
      internalAnimations: internalAnimations,
      transitionDuration: transitionDuration,
      bodyOrientation: bodyOrientation,
      onSelectedIndexChange: onSelectedIndexChange,
      useDrawer: useDrawer,
      appBar: appBar,
      navigationRailWidth: navigationRailWidth,
      extendedNavigationRailWidth: extendedNavigationRailWidth,
      appBarBreakpoint: appBarBreakpoint,
      navigationRailDestinationBuilder: navigationRailDestinationBuilder,
      groupAlignment: groupAlignment,
    );
  }
}
