/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIllustrationsGen {
  const $AssetsIllustrationsGen();

  /// File path: assets/illustrations/agreement.svg
  SvgGenImage get agreement =>
      const SvgGenImage('assets/illustrations/agreement.svg');

  /// File path: assets/illustrations/left_to_right.svg
  SvgGenImage get leftToRight =>
      const SvgGenImage('assets/illustrations/left_to_right.svg');

  /// File path: assets/illustrations/right_to_left.svg
  SvgGenImage get rightToLeft =>
      const SvgGenImage('assets/illustrations/right_to_left.svg');

  $AssetsIllustrationsTab1Gen get tab1 => const $AssetsIllustrationsTab1Gen();
  $AssetsIllustrationsTab2Gen get tab2 => const $AssetsIllustrationsTab2Gen();
  $AssetsIllustrationsTab3Gen get tab3 => const $AssetsIllustrationsTab3Gen();
}

class $AssetsIllustrationsTab1Gen {
  const $AssetsIllustrationsTab1Gen();

  /// File path: assets/illustrations/tab1/step1.svg
  SvgGenImage get step1 =>
      const SvgGenImage('assets/illustrations/tab1/step1.svg');

  /// File path: assets/illustrations/tab1/step2.svg
  SvgGenImage get step2 =>
      const SvgGenImage('assets/illustrations/tab1/step2.svg');

  /// File path: assets/illustrations/tab1/step3.svg
  SvgGenImage get step3 =>
      const SvgGenImage('assets/illustrations/tab1/step3.svg');
}

class $AssetsIllustrationsTab2Gen {
  const $AssetsIllustrationsTab2Gen();

  /// File path: assets/illustrations/tab2/step1.svg
  SvgGenImage get step1 =>
      const SvgGenImage('assets/illustrations/tab2/step1.svg');

  /// File path: assets/illustrations/tab2/step2.svg
  SvgGenImage get step2 =>
      const SvgGenImage('assets/illustrations/tab2/step2.svg');

  /// File path: assets/illustrations/tab2/step3.svg
  SvgGenImage get step3 =>
      const SvgGenImage('assets/illustrations/tab2/step3.svg');
}

class $AssetsIllustrationsTab3Gen {
  const $AssetsIllustrationsTab3Gen();

  /// File path: assets/illustrations/tab3/step1.svg
  SvgGenImage get step1 =>
      const SvgGenImage('assets/illustrations/tab3/step1.svg');

  /// File path: assets/illustrations/tab3/step2.svg
  SvgGenImage get step2 =>
      const SvgGenImage('assets/illustrations/tab3/step2.svg');

  /// File path: assets/illustrations/tab3/step3.svg
  SvgGenImage get step3 =>
      const SvgGenImage('assets/illustrations/tab3/step3.svg');
}

class Assets {
  Assets._();

  static const $AssetsIllustrationsGen illustrations =
      $AssetsIllustrationsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}
