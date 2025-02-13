import 'package:e_app/pages/Home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Image.asset(
                  'lib/images/logo.png',
                  height: 240,
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              const Text(
                "Just Do It",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
              const SizedBox(
                height: 28,
              ),
              const Text(
                "Brand new sneakers and custom kicks made with premium quality",
                style: TextStyle(fontSize: 15, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 28,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
