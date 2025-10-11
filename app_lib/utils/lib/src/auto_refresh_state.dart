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
    stopRefresh();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void startRefresh() {
    setState(() {
      autoRefresh = true;
    });

    refresh();
  }

  void refresh() {
    if (autoRefreshDuration.inSeconds < 1) {
      throw Exception('autoRefreshDuration must be at least 1 second');
    }
    _autoRefreshTimer = Timer(autoRefreshDuration, () {
      if (autoRefresh) {
        loadData();
        refresh();
      }
    });
  }

  void stopRefresh() {
    _autoRefreshTimer?.cancel();
    setState(() {
      autoRefresh = false;
    });
  }

  void loadData();

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    AppLogger().d('LifeCycleManager<AppLifecycleState<$state>>');
    if (state == AppLifecycleState.resumed) {
      if (autoRefresh) {
        refresh();
      }
    } else if (state == AppLifecycleState.inactive) {
      if (autoRefresh) {
        _autoRefreshTimer?.cancel();
      }
    }
  }
}
