import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LaddingPageLottie extends StatelessWidget {
  const LaddingPageLottie({
    super.key,
    this.controller,
    this.animate,
    this.frameRate,
    this.repeat,
    this.reverse,
    this.delegates,
    this.options,
    this.onLoaded,
    this.imageProviderFactory,
    this.bundle,
    this.frameBuilder,
    this.errorBuilder,
    this.width,
    this.height,
    this.fit,
    this.alignment,
    this.package,
    this.addRepaintBoundary,
    this.filterQuality,
    this.onWarning,
    this.decoder,
    this.renderCache,
    this.backgroundLoading,
  });

  final Animation<double>? controller;
  final bool? animate;
  final FrameRate? frameRate;
  final bool? repeat;
  final bool? reverse;
  final LottieDelegates? delegates;
  final LottieOptions? options;
  final void Function(LottieComposition)? onLoaded;
  final ImageProvider<Object>? Function(LottieImageAsset)? imageProviderFactory;
  final AssetBundle? bundle;
  final Widget Function(BuildContext, Widget, LottieComposition?)? frameBuilder;
  final Widget Function(BuildContext, Object, StackTrace?)? errorBuilder;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final AlignmentGeometry? alignment;
  final String? package;
  final bool? addRepaintBoundary;
  final FilterQuality? filterQuality;
  final void Function(String)? onWarning;
  final Future<LottieComposition?> Function(List<int>)? decoder;
  final RenderCache? renderCache;
  final bool? backgroundLoading;

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'packages/app_artwork/assets/lottie/landing_page.json',
      controller: controller,
      animate: animate,
      frameRate: frameRate,
      repeat: repeat,
      reverse: reverse,
      delegates: delegates,
      options: options,
      onLoaded: onLoaded,
      imageProviderFactory: imageProviderFactory,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      package: package,
      addRepaintBoundary: addRepaintBoundary,
      filterQuality: filterQuality,
      onWarning: onWarning,
      decoder: decoder,
      renderCache: renderCache,
      backgroundLoading: backgroundLoading,
    );
  }
}
