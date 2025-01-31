import 'package:flutter/material.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF1F1EF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.access_time, size: 80, color: Colors.grey),
            const SizedBox(height: 20),
            const Text(
              'Feature Coming Soon!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
            ),
            const SizedBox(height: 10),
            const Text(
              'Stay tuned for updates.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
