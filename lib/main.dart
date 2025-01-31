import 'package:flutter/material.dart';

import 'features/dashboard/pages/dashboard_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard UI',
      theme: ThemeData.light(),
      home: DashboardScreen(),
    );
  }
}
















