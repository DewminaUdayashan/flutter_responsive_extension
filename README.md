
# Responsive Extension Package

The Responsive Extension package is a Flutter package that provides utilities for creating responsive UI layouts in Flutter applications. It allows developers to easily create responsive UIs that adapt to different screen sizes and orientations, such as mobile phones, tablets, web browsers, and desktops.

Inspired By

This package was inspired by the following packages:

[flutter_screenutil](https://pub.dev/packages/flutter_screenutil): Provides a set of utility methods for creating responsive UIs in Flutter, with support for different screen sizes and orientations.
[responsive_framework](https://pub.dev/packages/responsive_framework): Provides a responsive layout framework for Flutter applications, allowing developers to create responsive UIs with flexible breakpoints and constraints.

**Features**

 - Responsive utilities: Provides methods for calculating scale factors based on device sizes, allowing for responsive UI layouts.
 - Device type detection: Provides an enum DeviceType that detects the current device type (mobile, tablet, web, or desktop) based on the screen width.
 - ResponsiveWidget: Provides a widget ResponsiveWidget that displays different widgets based on the current device type, allowing for easy adaptation of UI layouts for different devices.

**Getting Started**

To use the Responsive Extension package in your Flutter application, follow these steps:

Add the following import statement to your Dart file:

    import 'package:responsive_extension/responsive_extension.dart';

Initialize the ResponsiveExtension:

    ResponsiveExtension.initialize(context, mockSize: Size(360, 640));


You can pass an optional mockSize parameter to define a virtual size to be used as a reference for calculating scale factors. If not provided, the screen size will be used as the reference. You can also pass an optional deviceSize parameter to define a specific device size to be used for calculating scale factors. If not provided, the screen size will be used as the device size.

Use the provided extension methods and widgets in your UI layout code. For example:

```
Container(
  width: 100.w, // Responsive width based on the scale factor
  height: 50.h, // Responsive height based on the scale factor
  child: Text(
    'Hello',
    style: TextStyle(fontSize: 16.sp), // Responsive font size based on the scale factor
  ),
),
```

Use the currentDevice property to get the current device type:

    DeviceType deviceType = context.currentDevice;

Use the responsiveValue method to get a responsive value based on the current device type:
```
double value = context.responsiveValue(
  defaultValue: 20,
  mobile: 16,
  tablet: 18,
  web: 22,
  desktop: 24,
);
```

Use the ResponsiveWidget to display different widgets based on the current device type:
```
ResponsiveWidget(
  mobile: MobileWidget(),
  tablet: TabletWidget(),
  web: WebWidget(),
  desktop: DesktopWidget(),
),
```
**Credits**

This package is inspired by the [flutter_screenutil](https://pub.dev/packages/flutter_screenutil) and [responsive_framework](https://pub.dev/packages/responsive_framework) packages.
