// ignore: file_names
import 'package:flutter/material.dart' show AppBar, BuildContext, Icon, PreferredSizeWidget, Scaffold, Size, SizedBox, StatelessWidget, Text, Widget, kToolbarHeight;
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import "../utils/constants/colors.dart";

class FAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Icon left, right;
  final bool isBack;
  const FAppbar({
    super.key,
    required this.title,
    this.left = const Icon(Iconsax.notification_1_outline),
    this.right = const Icon(Bootstrap.cart),
    this.isBack = false,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: GoogleFonts.dmSans(color: FColors.oceanBlue)),
        centerTitle: true,
        actions: [left, SizedBox(width: 20), right, SizedBox(width: 20)],
        leading: isBack ? Icon(Iconsax.arrow_left_2_outline) : null,
      ),
    );
  }
}
