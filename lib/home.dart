import 'package:app_localization/models/languageProvider.dart';
import 'package:app_localization/widgets/flagWidget.dart';
import 'package:app_localization/widgets/languagePicker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // @override
  // void initState() {
  //   super.initState();

  //   WidgetsBinding.instance!.addPostFrameCallback((_) {
  //     final provider = Provider.of<LanguageProvider>(context, listen: false);

  //     provider.clearlocale();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.language),
        actions: [],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // LanguagePickerWidget(),
          FlagWidget(),
          Text(
            AppLocalizations.of(context)!.greeting,
            style: TextStyle(fontSize: 20),
          ),
          Text(AppLocalizations.of(context)!.name),
          Text(AppLocalizations.of(context)!.howareyou('Teesha'))
        ],
      )),
    );
  }
}
