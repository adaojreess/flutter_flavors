enum Flavor {
  DEV,
  PROD,
  HOM,
  QA,
}

class F {
  static Flavor appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.PROD:
        return 'AppName Prod';
      case Flavor.HOM:
        return 'AppName hom';
      case Flavor.QA:
        return 'AppName Qa';
      case Flavor.DEV:
      default:
        return 'AppName Dev';
    }
  }

  static bool get isDev => F.appFlavor == Flavor.DEV;
  static bool get isQa => F.appFlavor == Flavor.QA;
  static bool get isProd => F.appFlavor == Flavor.PROD;
  static bool get isHom => F.appFlavor == Flavor.HOM;

  static String get baseURL {
    switch (appFlavor) {
      case Flavor.PROD:
        return 'https://api_prod.com/';
      case Flavor.HOM:
        return 'https://api_hom.com/';
      case Flavor.QA:
        return 'https://api_qa.com/';
      case Flavor.DEV:
      default:
        return 'http://localhost:3000/';
    }
  }
}
