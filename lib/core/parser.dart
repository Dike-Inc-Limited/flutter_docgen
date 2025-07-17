import '../models/screen.dart';

List<Screen> parseWidgets(String folderPath) {
  // TODO: Use analyzer to parse real widget tree
  return [
    Screen(name: 'LoginPage', route: '/login', widgets: ['TextField', 'Button']),
    Screen(name: 'DashboardPage', route: '/dashboard', widgets: ['AppBar', 'ListView'])
  ];
}