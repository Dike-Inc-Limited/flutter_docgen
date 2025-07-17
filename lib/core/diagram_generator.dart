import 'dart:convert';
import 'dart:io';

void generateMermaidDiagram(String jsonPath, String outputPath) {
  final data = jsonDecode(File(jsonPath).readAsStringSync());
  final buffer = StringBuffer('graph LR\n');

  for (int i = 0; i < data['screens'].length - 1; i++) {
    final from = data['screens'][i]['name'];
    final to = data['screens'][i + 1]['name'];
    buffer.writeln('  $from --> $to');
  }

  File(outputPath).writeAsStringSync(buffer.toString());
}
