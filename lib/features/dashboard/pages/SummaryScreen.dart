import 'package:flutter/material.dart';

class SummaryScreen extends StatefulWidget {
  const SummaryScreen({super.key});

  @override
  State<SummaryScreen> createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF1F1EF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.access_time, size: 80, color: Colors.grey),
            SizedBox(height: 20),
            Text(
              'Feature Coming Soon!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
            ),
            SizedBox(height: 10),
            Text(
              'Stay tuned for updates.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
