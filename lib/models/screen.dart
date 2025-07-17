class Screen {
  final String name;
  final String route;
  final List<String> widgets;

  Screen({required this.name, required this.route, required this.widgets});

  Map<String, dynamic> toJson() => {
    'name': name,
    'route': route,
    'widgets': widgets,
  };
}