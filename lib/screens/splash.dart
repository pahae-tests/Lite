import 'dart:async';
import 'package:flutter/material.dart';
import 'feed.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const FeedScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF18191A),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Icône Facebook (cercle blanc + logo)
                    Container(
                      width: 76,
                      height: 76,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(
                          color: const Color(0xFF3A3B3C),
                          width: 1,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/components/logo.jpg',
                          width: 76,
                          height: 76,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 28),
                    // Dots pagination
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(5, (index) {
                        final isActive = index == 0;
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: isActive
                                ? const Color(0xFF1877F2)
                                : const Color(0xFF3A3B3C),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ),
            // Bas d'écran : "from Meta"
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Column(
                children: [
                  const Text(
                    'from',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFB0B3B8),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.all_inclusive,
                        color: Color(0xFF1877F2),
                        size: 22,
                      ),
                      const SizedBox(width: 6),
                      const Text(
                        'Meta',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1877F2),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}