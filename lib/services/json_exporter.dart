import 'dart:convert';
import 'dart:io';
import '../models/screen.dart';

void exportToJson(List<Screen> screens, String outputPath) {
  final json = jsonEncode({'screens': screens.map((s) => s.toJson()).toList()});
  File(outputPath).writeAsStringSync(json);
}