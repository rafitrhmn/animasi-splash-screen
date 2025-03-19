import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splash_screen/homepage.dart';

class LogoTeks extends StatefulWidget {
  const LogoTeks({super.key});

  @override
  State<LogoTeks> createState() => _LogoTeksState();
}

class _LogoTeksState extends State<LogoTeks> {
  @override
  void initState() {
    super.initState();

    // Jalankan widget ini selama 3,5 detik, lalu pindah ke HomePage
    Future.delayed(const Duration(milliseconds: 3500), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Homepage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.38, -0.92),
            end: Alignment(-0.38, 0.92),
            colors: [
              Color(0xFFBA43CE),
              Color(0xFF6900FD),
            ],
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo_putih.png',
              ),
              const SizedBox(width: 12),
              Text(
                'Hello',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 48,
                  fontWeight: FontWeight.w800,
                  height: 1.2,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
