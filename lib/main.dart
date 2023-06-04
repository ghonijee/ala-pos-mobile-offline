import 'package:ala_pos/app/screens/app_start.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  await initializeDateFormatting('id', null);

  runApp(AppStart());
}
