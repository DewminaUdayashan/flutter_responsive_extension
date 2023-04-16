import 'package:flutter/material.dart';
import 'package:flutter_responsive_extension/responsive_extentsion/responsive_enums.dart';

extension ResponsiveExtensions on BuildContext {
  DeviceType get currentDevice {
    final double screenWidth = MediaQuery.of(this).size.width;
    if (screenWidth < 600) {
      return DeviceType.mobile;
    } else if (screenWidth >= 600 && screenWidth < 900) {
      return DeviceType.tablet;
    } else if (screenWidth >= 900 && screenWidth < 1200) {
      return DeviceType.web;
    } else {
      return DeviceType.desktop;
    }
  }

  double responsiveValue({
    required double defaultValue,
    double? mobile,
    double? tablet,
    double? web,
    double? desktop,
  }) {
    final DeviceType device = currentDevice;
    switch (device) {
      case DeviceType.mobile:
        return mobile ?? defaultValue;
      case DeviceType.tablet:
        return tablet ?? defaultValue;
      case DeviceType.web:
        return web ?? defaultValue;
      case DeviceType.desktop:
        return desktop ?? defaultValue;
      default:
        return defaultValue;
    }
  }
}
