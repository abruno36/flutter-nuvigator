import 'package:flutter/src/widgets/framework.dart';
import 'package:nuvigator/next.dart';
import 'package:proj/screens/profile_screen.dart';

class ProfileRoute extends NuRoute {
  @override
  String get path => 'profile';

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    print("Parâmetros recebidos ${settings.rawParameters['name']}");
    return ProfileScreen(
      onClose: () => nuvigator.pop('Ola, eu sou um retorno de parâmetros! O nome é: ${settings.rawParameters['name']}'),
    );
  }
}