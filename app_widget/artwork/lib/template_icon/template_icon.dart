import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Widget builder for template icons with fallback support
///
/// This function loads SVG icons from the artwork package's assets.
/// Supported template types: ansible, bash, terraform, opentofu (tofu)
///
/// Example usage:
/// ```dart
/// Widget icon = buildTemplateIcon('ansible', size: 24);
/// ```
Widget buildTemplateIcon(String? app, {double size = 24}) {
  if (app == null || app.isEmpty) {
    return Icon(Icons.description, size: size);
  }

  // Map app names to SVG file names
  // "tofu" is mapped to "opentofu" to match the actual SVG filename
  final svgName = app == 'tofu' ? 'opentofu' : app;

  return SvgPicture.asset(
    'assets/svg/$svgName.svg',
    package: 'app_artwork',
    height: size,
    width: size,
    placeholderBuilder: (context) => Icon(Icons.description, size: size),
  );
}

/// Available template icon types
class TemplateIconType {
  static const String ansible = 'ansible';
  static const String bash = 'bash';
  static const String terraform = 'terraform';
  static const String opentofu = 'opentofu';
  static const String tofu = 'tofu'; // alias for opentofu
}
