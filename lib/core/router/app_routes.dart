enum AppRoutes {
  welcome(path: '/'),
  home(path: '/home'),
  privacy(path: '/privacy'),
  terms(path: '/terms'),
  settings(path: '/settings'),
  menu(path: '/menu'),
  instruction(path: '/instruction'),
  level(path: '/level'),
  mode(path: '/mode'),
  game(path: '/game'),
  alert(path: '/alert');

  final String path;

  const AppRoutes({required this.path});
}
