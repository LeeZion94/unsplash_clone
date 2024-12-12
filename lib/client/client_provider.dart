import 'package:unsplash_clone/app/unsplash_config.dart';
import 'package:unsplash_clone/network/network_client.dart';

class ClientProvider {
  static ClientProvider? _instance;

  ClientProvider._internal();

  factory ClientProvider() {
    ClientProvider? instance = _instance;

    if (instance != null) {
      return instance;
    }

    instance = ClientProvider._internal();
    _instance = instance;

    return instance;
  }

  NetworkClient get networkClient =>
      NetworkClient(baseUrl: UnsplashConfig.baseUrl);
}
