import 'package:ala_ui/ala_ui.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

@RoutePage(name: "StoreFormProfile")
class StoreFormProfileScreen extends StatelessWidget {
  const StoreFormProfileScreen({super.key});

  Widget build(BuildContext context) {
    var theme = BaseUI.of(context);
    return Scaffold(
      backgroundColor: theme.color.surfaceVariant,
      body: AppBar(
        backgroundColor: theme.color.primary,
        title: Text("Profil Usaha"),
      ),
    );
  }
}
