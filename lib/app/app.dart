import 'package:daisy/core/style/theme.dart';
import 'package:daisy/router/router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    // Use with Google Fonts package to use downloadable fonts
    final textTheme = createTextTheme(context, 'Rubik', 'Rubik');
    final theme = MaterialTheme(textTheme);

    return MaterialApp.router(
      title: 'Flutter Template',
      debugShowCheckedModeBanner: false,
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      scaffoldMessengerKey: rootScaffoldMessengerKey,
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      routerConfig: goRouter,
    );
  }
}
