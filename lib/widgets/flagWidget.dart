import 'package:app_localization/l10n/l10n.dart';
import 'package:flutter/material.dart';

class FlagWidget extends StatelessWidget {
  const FlagWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = Localizations.localeOf(context);
    final flag = L10n.getFlag(local.languageCode);
    return Container(
      child: Text(
        flag,
        style: TextStyle(fontSize: 60),
      ),
    );
  }
}
