import 'package:flutter/material.dart';
import '../Widgets/sidebar.dart';
import 'AttendanceScreen.dart';
import 'EmployeesScreen.dart';
import 'HomeScreen.dart';
import 'InformationScreen.dart';
import 'SummaryScreen.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  String selectedScreen = 'Home'; // Track selected screen

  Widget getScreen() {
    switch (selectedScreen) {
      case 'Employees':
        return EmployeesScreen();
      case 'Attendance':
        return AttendanceScreen();
      case 'Summary':
        return SummaryScreen();
      case 'Information':
        return InformationScreen();
      default:
        return Homescreen(); // Default screen is Home
    }
  }

  void onMenuSelected(String menu) {
    setState(() {
      selectedScreen = menu;
    });
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 5,
          backgroundColor: Colors.white,
          child: Container(
            width: 300, // Set a specific width for the dialog
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.exit_to_app,
                  color: Colors.redAccent,
                  size: 60,
                ),
                const SizedBox(height: 15),
                const Text(
                  "Confirm Logout",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Are you sure you want to logout? This action cannot be undone.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "No",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        // Perform logout action here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "Yes",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Sidebar(
            onMenuSelected: onMenuSelected,
            selectedMenu: selectedScreen,
            onLogoutPressed: _showLogoutDialog, // Pass the logout function
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(child: getScreen()), // Display selected screen
              ],
            ),
          ),
        ],
      ),
    );
  }
}
