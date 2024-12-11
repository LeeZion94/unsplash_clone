class ServiceProvider {
  static ServiceProvider? _instance;

  ServiceProvider._internal();

  factory ServiceProvider() {
    ServiceProvider? instance = _instance;

    if (instance != null) {
      return instance;
    }

    instance = ServiceProvider._internal();
    _instance = instance;

    return instance;
  }
}
