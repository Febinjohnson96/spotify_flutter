/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/get started
  $AssetsImagesGetStartedGen get getStarted =>
      const $AssetsImagesGetStartedGen();

  /// Directory path: assets/images/theme_selection
  $AssetsImagesThemeSelectionGen get themeSelection =>
      const $AssetsImagesThemeSelectionGen();
}

class $AssetsVectorsGen {
  const $AssetsVectorsGen();

  /// File path: assets/vectors/spotify_logo.svg
  String get spotifyLogo => 'assets/vectors/spotify_logo.svg';

  /// Directory path: assets/vectors/theme_selection
  $AssetsVectorsThemeSelectionGen get themeSelection =>
      const $AssetsVectorsThemeSelectionGen();

  /// List of all assets
  List<String> get values => [spotifyLogo];
}

class $AssetsImagesGetStartedGen {
  const $AssetsImagesGetStartedGen();

  /// File path: assets/images/get started/getstarted.png
  AssetGenImage get getstarted =>
      const AssetGenImage('assets/images/get started/getstarted.png');

  /// List of all assets
  List<AssetGenImage> get values => [getstarted];
}

class $AssetsImagesThemeSelectionGen {
  const $AssetsImagesThemeSelectionGen();

  /// File path: assets/images/theme_selection/theme_selection_bg.png
  AssetGenImage get themeSelectionBg => const AssetGenImage(
      'assets/images/theme_selection/theme_selection_bg.png');

  /// List of all assets
  List<AssetGenImage> get values => [themeSelectionBg];
}

class $AssetsVectorsThemeSelectionGen {
  const $AssetsVectorsThemeSelectionGen();

  /// File path: assets/vectors/theme_selection/Moon.svg
  String get moon => 'assets/vectors/theme_selection/Moon.svg';

  /// File path: assets/vectors/theme_selection/Moon2.svg
  String get moon2 => 'assets/vectors/theme_selection/Moon2.svg';

  /// File path: assets/vectors/theme_selection/Sun.svg
  String get sun => 'assets/vectors/theme_selection/Sun.svg';

  /// File path: assets/vectors/theme_selection/eclipse1.svg
  String get eclipse1 => 'assets/vectors/theme_selection/eclipse1.svg';

  /// File path: assets/vectors/theme_selection/eclipse2.svg
  String get eclipse2 => 'assets/vectors/theme_selection/eclipse2.svg';

  /// List of all assets
  List<String> get values => [moon, moon2, sun, eclipse1, eclipse2];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsVectorsGen vectors = $AssetsVectorsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
