import 'dart:async';

import 'package:app_logging/app_logging.dart';
import 'package:flutter/material.dart';

mixin AutoRefreshMixin<T extends StatefulWidget>
    on State<T>, WidgetsBindingObserver {
  bool autoRefresh = true;
  bool autoLoad = true;
  Duration autoRefreshDuration = const Duration(seconds: 10);
  Timer? _autoRefreshTimer;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
    if (autoLoad) {
      loadData();
    }
    if (autoRefresh) {
      startRefresh();
    }
  }

  @override
  void dispose() {
    // Cancel timer first to prevent any timer callbacks during disposal
    _autoRefreshTimer?.cancel();
    _autoRefreshTimer = null;

    // Remove observer before calling setState
    WidgetsBinding.instance.removeObserver(this);

    // Update state without setState to avoid lifecycle issues
    autoRefresh = false;

    super.dispose();
  }

  void startRefresh() {
    if (mounted) {
      setState(() {
        autoRefresh = true;
      });
    } else {
      autoRefresh = true;
    }

    refresh();
  }

  void refresh() {
    if (autoRefreshDuration.inSeconds < 1) {
      throw Exception('autoRefreshDuration must be at least 1 second');
    }
    _autoRefreshTimer = Timer(autoRefreshDuration, () {
      // Check if widget is still mounted and timer hasn't been cancelled
      if (mounted && _autoRefreshTimer != null && autoRefresh) {
        loadData();
        refresh();
      }
    });
  }

  void stopRefresh() {
    _autoRefreshTimer?.cancel();
    _autoRefreshTimer = null;

    if (mounted) {
      setState(() {
        autoRefresh = false;
      });
    } else {
      autoRefresh = false;
    }
  }

  void loadData();

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    AppLogger().d('LifeCycleManager<AppLifecycleState<$state>>');
    if (state == AppLifecycleState.resumed) {
      if (autoRefresh && mounted) {
        refresh();
      }
    } else if (state == AppLifecycleState.inactive) {
      if (autoRefresh) {
        _autoRefreshTimer?.cancel();
        _autoRefreshTimer = null;
      }
    }
  }
}
