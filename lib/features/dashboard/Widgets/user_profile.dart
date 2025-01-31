import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(height: 10),
          Container(height: 60, decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/Adstacks logo.png")))),
          Divider(),
          Container(
            width: 66, height: 66,
            decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Color(0xffFFA915), width: 3)),
            child: CircleAvatar(radius: 30, backgroundImage: AssetImage('assets/images/jpeg-optimizer_IMG_0978.JPG')),
          ),
          SizedBox(height: 10),
          Text('Garv Sharma', style: TextStyle(color: Colors.black, fontSize: 16)),
          SizedBox(height: 7),
          Container(
            width: 70, decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: Color(0xffBAAFFF), width: 2)),
            child: Center(child: Text('Admin', style: TextStyle(color: Colors.black))),
          ),
          SizedBox(height: 7),
          Divider(),
        ],
      ),
    );
  }
}
