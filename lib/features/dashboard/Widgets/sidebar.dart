import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'menu_item.dart';
import 'user_profile.dart';

class Sidebar extends StatelessWidget {
  final Function(String) onMenuSelected;
  final String selectedMenu;
  final Function onLogoutPressed;

  Sidebar({required this.onMenuSelected, required this.selectedMenu, required this.onLogoutPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.white,
      child: Column(
        children: [
          UserProfile(),
          MenuItem(
            title: 'Home',
            icon: Icons.home,
            isSelected: selectedMenu == 'Home',
            onTap: () => onMenuSelected('Home'),
          ),
          MenuItem(
            title: 'Employees',
            icon: Icons.people,
            isSelected: selectedMenu == 'Employees',
            onTap: () => onMenuSelected('Employees'),
          ),
          MenuItem(
            title: 'Attendance',
            icon: FontAwesomeIcons.tasks,
            isSelected: selectedMenu == 'Attendance',
            onTap: () => onMenuSelected('Attendance'),
          ),
          MenuItem(
            title: 'Summary',
            icon: Icons.calendar_month_sharp,
            isSelected: selectedMenu == 'Summary',
            onTap: () => onMenuSelected('Summary'),
          ),
          MenuItem(
            title: 'Information',
            icon: Icons.info_outline,
            isSelected: selectedMenu == 'Information',
            onTap: () => onMenuSelected('Information'),
          ),
          Container(
            height: 60,
            width: double.infinity,
            color: const Color(0xffE3E9FE),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("WORKSPACES", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                SizedBox(width: 40),
                Icon(Icons.add, size: 20)
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Adstacks", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
              SizedBox(width: 40),
              Icon(Icons.keyboard_arrow_down_outlined, size: 20),
              SizedBox(width: 38),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Finances", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
              SizedBox(width: 40),
              Icon(Icons.keyboard_arrow_down_outlined, size: 20),
              SizedBox(width: 38),
            ],
          ),
          const SizedBox(height: 25),
          MenuItem(
            title: 'Setting',
            icon: Icons.settings,
            isSelected: selectedMenu == 'Setting',
            onTap: () => onMenuSelected('Setting'),
          ),
          MenuItem(
            title: 'Logout',
            icon: Icons.logout,
            isSelected: selectedMenu == 'LogOut',
            onTap: () => onLogoutPressed(context), // Call the logout function
          ),
        ],
      ),
    );
  }
}
