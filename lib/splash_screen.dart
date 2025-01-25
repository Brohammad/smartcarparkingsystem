import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final Duration duration; // Duration to wait before navigation
  final Widget nextScreen; // The screen to navigate to after the delay

  const SplashScreen({
    super.key, // Add a key parameter
    this.duration = const Duration(seconds: 3), // Default duration is 3 seconds
    required this.nextScreen, // Required next screen
  });

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the next screen after the specified duration
    Future.delayed(widget.duration, () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => widget.nextScreen),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App Logo
            Icon(
              Icons.local_parking, // Replace with your app logo
              size: 100,
              color: Colors.white,
            ),
            const SizedBox(height: 20), // Spacing
            // App Name
            Text(
              'Park Smarter',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
