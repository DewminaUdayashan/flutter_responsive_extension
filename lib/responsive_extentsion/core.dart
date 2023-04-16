import 'package:flutter/material.dart';

class ResponsiveExtension {
  static final ResponsiveExtension _instance = ResponsiveExtension._();

  ResponsiveExtension._();

  /// singleton
  factory ResponsiveExtension() => _instance;

  ///necessary variables
  static late Size _mockSize;
  static late Size _deviceSize;
  static late double _widthScaleFactor;
  static late double _hightScaleFactor;
  static late double _textScaleFactor;

  static void initialize(BuildContext context,
      {Size? mockSize, Size? deviceSize, bool widthBasedTextScaling = true}) {
    final size = MediaQuery.of(context).size;
    if (mockSize != null) {
      _mockSize = mockSize;
    } else {
      _mockSize = size;
    }
    if (deviceSize != null) {
      _deviceSize = deviceSize;
    } else {
      _deviceSize = size;
    }

    /// calculating scale factors
    _widthScaleFactor = _deviceSize.width / _mockSize.width;
    _hightScaleFactor = _deviceSize.height / _mockSize.height;
    _textScaleFactor =
        widthBasedTextScaling ? _widthScaleFactor : _hightScaleFactor;
  }

  static double get widthScaleFactor => _widthScaleFactor;

  static double get heightScaleFactor => _hightScaleFactor;

  static double get textScaleFactor => _textScaleFactor;

  double width(num width) => width * _widthScaleFactor;
  double height(num height) => height * _hightScaleFactor;
  double fontSize(num fontSize) => fontSize * _textScaleFactor;
}

extension ResponsiveExtensionCore on num {
  double get w => ResponsiveExtension().width(this);
  double get h => ResponsiveExtension().height(this);
  double get sp => ResponsiveExtension().fontSize(this);
}
