import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart' as quick_actions;
import 'system_tray_manager.dart';

/// ShortcutItem class for compatibility
class ShortcutItem {
  final String type;
  final String localizedTitle;
  final String? icon;

  ShortcutItem({required this.type, required this.localizedTitle, this.icon});
}

/// Quick actions manager for mobile applications
class QuickActionsManager {
  late quick_actions.QuickActions _quickActions;
  bool _isInitialized = false;
  final Map<String, VoidCallback> _actions = {};

  /// Initialize quick actions
  Future<void> initialize() async {
    if (_isInitialized || !PlatformExt.isMobile) return;

    _quickActions = quick_actions.QuickActions();
    _quickActions.initialize((shortcutType) {
      final callback = _actions[shortcutType];
      if (callback != null) {
        callback();
      }
    });

    _isInitialized = true;
  }

  /// Set shortcut items
  Future<void> setShortcutItems(List<ShortcutItem> items) async {
    if (!_isInitialized) return;

    // Convert our ShortcutItem to the quick_actions package ShortcutItem
    final quickActionsItems = items
        .map(
          (item) => quick_actions.ShortcutItem(
            type: item.type,
            localizedTitle: item.localizedTitle,
            icon: item.icon,
          ),
        )
        .toList();

    await _quickActions.setShortcutItems(quickActionsItems);
  }

  /// Register an action callback
  void registerAction(String type, VoidCallback callback) {
    _actions[type] = callback;
  }

  /// Check if quick actions is initialized
  bool get isInitialized => _isInitialized;
}

/// Platform extension utilities - use the one from system_tray_manager.dart
