import 'package:flutter/material.dart';
import 'package:flutter_responsive_extension/flutter_responsive_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Responsive Extension',
      home: const Home(),
      builder: (context, child) {
        /// you should consider to define `mockSize`, which is comes from the design
        /// etc:- figma, XD
        ResponsiveExtension.initialize(context, mockSize: const Size(360, 870));
        return child!;
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWidget(
        mobile: Column(
          children: [
            Text(
              'Mobile',
              style: TextStyle(
                fontSize: 25.sp,
              ),
            ),
            SizedBox(
              height: context.responsiveValue(
                defaultValue: 10,
                tablet: 15,
                web: 20,
              ),
            ),
            Container(
              height: 100.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(20),
              ),
            )
          ],
        ),
        tablet: Column(
          children: [
            Text(
              'Tab',
              style: TextStyle(
                fontSize: 25.sp,
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              height: 100.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
