import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;
import 'package:splash_screen/logo_teks.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen(
      useImmersiveMode: true,
      duration: const Duration(milliseconds: 3200), // Durasi splash
      nextScreen: LogoTeks(), // Halaman berikutnya
      backgroundColor: Colors.black,
      splashScreenBody: Center(
        child: SizedBox(
          width: 180,
          height: 180,
          child: rive.RiveAnimation.asset(
            "assets/animation_logo.riv", // Animasi Rive
            fit: BoxFit.contain,
          ),
        ),
      ), // Latar belakang splash
    );
  }
}
