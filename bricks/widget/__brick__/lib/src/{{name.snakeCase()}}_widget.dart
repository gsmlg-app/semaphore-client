import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// {{name.pascalCase()}} widget - {{name.sentenceCase()}} component
///
/// A reusable {{name.sentenceCase()}} widget that provides {{type}} functionality
/// with platform-specific styling and behavior.
class {{name.pascalCase()}}Widget extends {{#type stateless}}StatelessWidget{{/type stateless}}{{#type stateful}}StatefulWidget{{/type stateful}} {
  const {{name.pascalCase()}}Widget({
    super.key,{{#type stateful}}
    required this.child,{{/type stateful}}
  });

  {{#type stateful}}final Widget child;

  @override
  State<{{name.pascalCase()}}Widget> createState() => _{{name.pascalCase()}}WidgetState();
}

class _{{name.pascalCase()}}WidgetState extends State<{{name.pascalCase()}}Widget> {
  @override
  Widget build(BuildContext context) {{/type stateful}}{{#type stateless}}@override
  Widget build(BuildContext context) {{/type stateless}}{
    {{#has_platform_adaptive}}final ThemeData theme = Theme.of(context);
    switch (theme.platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return _buildMaterialWidget(context);
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return _buildCupertinoWidget(context);
    }{{/has_platform_adaptive}}{{^has_platform_adaptive}}return _buildWidget(context);{{/has_platform_adaptive}}
  }

  {{#has_platform_adaptive}}Widget _buildMaterialWidget(BuildContext context) {
    // TODO: Implement Material Design version
    return Container(
      child: const Text('{{name.pascalCase()}} - Material'),
    );
  }

  Widget _buildCupertinoWidget(BuildContext context) {
    // TODO: Implement Cupertino Design version
    return Container(
      child: const Text('{{name.pascalCase()}} - Cupertino'),
    );
  }{{/has_platform_adaptive}}{{^has_platform_adaptive}}Widget _buildWidget(BuildContext context) {
    // TODO: Implement widget
    return Container(
      child: const Text('{{name.pascalCase()}} Widget'),
    );
  }{{/has_platform_adaptive}}
}