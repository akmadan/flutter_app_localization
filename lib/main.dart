import 'package:app_localization/models/languageProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'home.dart';
import 'l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LanguageProvider(),
        builder: (context, child) {
          final languageprovider = Provider.of<LanguageProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'App Localization',
            supportedLocales: L10n.all, //Takes a List of Locales
            locale: languageprovider.locale,
            localizationsDelegates: [
              AppLocalizations
                  .delegate, //Importing the Locales Present in app_localizations.dart file in .dart_tool
              GlobalMaterialLocalizations.delegate, //For Material Widgets
              GlobalCupertinoLocalizations.delegate, //For Cupertino Widgets
              GlobalWidgetsLocalizations
                  .delegate //Text Direction for various Languages
            ],
            home: Home(),
          );
        });
  }
}
