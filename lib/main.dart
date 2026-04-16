import 'package:e_commerce/core/helpuer_functions/On_generate_routes..dart';
import 'package:e_commerce/features/splash/presentation/views/splash_view.dart'
    show SplashView;
import 'package:flutter/material.dart';

void main() {
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
