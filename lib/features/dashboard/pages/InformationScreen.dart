import 'package:flutter/material.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({super.key});

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
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
