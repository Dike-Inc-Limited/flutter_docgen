import 'package:args/args.dart';
import '../core/parser.dart';
import '../services/json_exporter.dart';
import '../core/doc_generator.dart';
import '../core/diagram_generator.dart';

void runCli(List<String> args) {
  final parser = ArgParser()
    ..addCommand('export')
    ..addCommand('generate')
    ..addCommand('journey')
    ..addCommand('diagram')
    ..addCommand('all');

  final results = parser.parse(args);

  switch (results.command?.name) {
    case 'export':
      final data = parseWidgets('lib/');
      exportToJson(data, 'docs/structure.json');
      print('✅ Exported widget tree to docs/structure.json');
      break;
    case 'generate':
      generateUserManual('docs/structure.json', 'docs/user_manual.md');
      print('✅ Generated user manual');
      break;
    case 'journey':
      generateAppJourney('docs/structure.json', 'docs/app_journey.md');
      print('✅ Generated app journey');
      break;
    case 'diagram':
      generateMermaidDiagram('docs/structure.json', 'docs/diagrams/user_flow.mmd');
      print('✅ Generated Mermaid diagram');
      break;
    case 'all':
      final data = parseWidgets('lib/');
      exportToJson(data, 'docs/structure.json');
      generateUserManual('docs/structure.json', 'docs/user_manual.md');
      generateAppJourney('docs/structure.json', 'docs/app_journey.md');
      generateMermaidDiagram('docs/structure.json', 'docs/diagrams/user_flow.mmd');
      print('✅ All docs generated');
      break;
    default:
      print('Usage: flutter_docgen export | generate | journey | diagram | all');
  }
}