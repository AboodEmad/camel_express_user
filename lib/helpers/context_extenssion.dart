import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ContextExtension on BuildContext {
  void showSnackBar({required String message, bool error = false}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: GoogleFonts.poppins(),
        ),
        backgroundColor: error ? Colors.red.shade800 : Colors.green.shade800,
        dismissDirection: DismissDirection.horizontal,
        duration: const Duration(seconds: 2,),
      ),
    );
  }

  // AppLocalizations get localizations{
  //   return AppLocalizations.of(this)!;
  // }

}
