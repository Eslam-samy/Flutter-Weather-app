import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MainAppLoader extends StatelessWidget {
  const MainAppLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/lottie/loader.json', width: 400, height: 200),
    );
  }
}
