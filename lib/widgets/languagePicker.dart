// import 'package:app_localization/l10n/l10n.dart';
// import 'package:app_localization/models/languageProvider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class LanguagePickerWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<LanguageProvider>(context);
//     final locale = provider.locale;

//     return Container(
//       child: DropdownButtonHideUnderline(
//         child: DropdownButton(
//           value: locale,
//           icon: Container(width: 12),
//           items: L10n.all.map(
//             (locale) {
//               final flag = L10n.getFlag(locale.languageCode);

//               return DropdownMenuItem(
//                 child: Center(
//                   child: Text(
//                     flag,
//                     style: TextStyle(fontSize: 32),
//                   ),
//                 ),
//                 value: locale,
//                 onTap: () {
//                   final provider =
//                       Provider.of<LanguageProvider>(context, listen: false);

//                   provider.setLocale(locale);
//                 },
//               );
//             },
//           ).toList(),
//           onChanged: (_) {},
//         ),
//       ),
//     );
//   }
// }
