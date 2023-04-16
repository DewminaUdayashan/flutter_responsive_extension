import 'package:flutter/material.dart';
import 'package:flutter_responsive_extension/responsive_extentsion/responsive_enums.dart';
import 'package:flutter_responsive_extension/responsive_extentsion/responsive_extension.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? web;
  final Widget? desktop;

  const ResponsiveWidget({
    super.key,
    this.mobile,
    this.tablet,
    this.web,
    this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    final deviceType = context.currentDevice;

    switch (deviceType) {
      case DeviceType.mobile:
        return mobile ?? tablet ?? web ?? desktop ?? const Placeholder();
      case DeviceType.tablet:
        return tablet ?? mobile ?? web ?? desktop ?? const Placeholder();
      case DeviceType.web:
        return web ?? desktop ?? web ?? mobile ?? const Placeholder();
      case DeviceType.desktop:
        return desktop ?? web ?? tablet ?? mobile ?? const Placeholder();
      default:
        return const Placeholder();
    }
  }
}
