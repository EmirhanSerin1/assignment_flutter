import 'package:assignment_flutter/view/home/home.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080, 1920),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: FlexThemeData.light(
            scaffoldBackground: Theme.of(context).scaffoldBackgroundColor,
            scheme: FlexScheme.shark,
            surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
            blendLevel: 20,
            appBarOpacity: 0.95,
            subThemesData: const FlexSubThemesData(
              blendOnLevel: 20,
              blendOnColors: false,
              navigationRailSelectedLabelSchemeColor: SchemeColor.primary,
              navigationRailMutedUnselectedLabel: false,
              navigationRailSelectedIconSchemeColor: SchemeColor.primary,
              navigationRailMutedUnselectedIcon: false,
            ),
            visualDensity: FlexColorScheme.comfortablePlatformDensity,
            useMaterial3: true,
          ),
          home: const MyHomePage(),
        );
      },
    );
  }
}
