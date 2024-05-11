import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mind_mate/controller/utilities/routes/routes.dart';
import 'package:mind_mate/pages/utilities/colorsNew.dart';
import 'package:size_config/size_config.dart';
import 'global.dart';

void main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return SizeConfigInit(
      referenceHeight: 1000,
      referenceWidth: 300,
      builder: (BuildContext context, Orientation orientation) {
        return ProviderScope(
          child: MaterialApp(
            title: 'MindMate',
            theme: ThemeData(
              colorScheme: theme.colorScheme
                  .copyWith(background: colorsNew.backgroundColorNew),
              useMaterial3: true,
              textTheme: const TextTheme(
                bodyMedium: TextStyle(
                  fontFamily: 'OdinRounded', // Use your custom font here
                ),
              ),
            ),
            onGenerateRoute: AppPages.generateRouteSettings,
          ),
        );
      },
    );
  }
}
