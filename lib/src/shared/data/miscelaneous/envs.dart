class Env {
  String get name => const String.fromEnvironment('NAME');
  String get baseUrl => const String.fromEnvironment('FIREBASE_URL');
}

class Envs {
  static const String development = 'DEV';
  static const String staging = 'STAGING';
  static const String production = 'PRODUCTION';
}
