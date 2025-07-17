import 'dart:convert';
import 'dart:io';

void generateUserManual(String jsonPath, String outputPath) {
  final data = jsonDecode(File(jsonPath).readAsStringSync());
  final buffer = StringBuffer('# 📱 User Manual\n\n');

  for (var screen in data['screens']) {
    buffer.writeln('## ${screen['name']} (`${screen['route']}`)');
    buffer.writeln('- Widgets:');
    for (var widget in screen['widgets']) {
      buffer.writeln('  - $widget');
    }
    buffer.writeln('');
  }
  File(outputPath).writeAsStringSync(buffer.toString());
}

void generateAppJourney(String jsonPath, String outputPath) {
  final data = jsonDecode(File(jsonPath).readAsStringSync());
  final buffer = StringBuffer('# 🧭 App Journey\n\n');
  int step = 1;
  for (var screen in data['screens']) {
    buffer.writeln('$step. Navigate to ${screen['name']} (`${screen['route']}`)');
    step++;
  }
  File(outputPath).writeAsStringSync(buffer.toString());
}