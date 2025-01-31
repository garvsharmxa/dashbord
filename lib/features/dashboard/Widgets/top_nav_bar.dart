import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      color: const Color(0xffF1F1EF),
      child: Row(
        children: [
          const Text('Home', style: TextStyle(fontWeight: FontWeight.w700, color: Colors.grey, fontSize: 22.5)),
          const Spacer(),
          Container(
            width: 300,
            decoration: BoxDecoration(color: const Color(0xff2F293F), borderRadius: BorderRadius.circular(15)),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search', hintStyle: const TextStyle(color: Color(0xffE2D8FD)),
                suffixIcon: const Icon(Icons.search, color: Color(0xffE2D8FD)),
                filled: true, fillColor: Colors.white10,
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          const SizedBox(width: 60),
          IconButton(icon: const Icon(FontAwesomeIcons.message), onPressed: () {}),
          const SizedBox(width: 10),
          IconButton(icon: const Icon(FontAwesomeIcons.solidBell), onPressed: () {}),
          const SizedBox(width: 10),
          IconButton(icon: const Icon(Icons.power_settings_new), onPressed: () {}),
          const SizedBox(width: 50),
          Container(
            height: 35, width: 35,
            decoration: const BoxDecoration(shape: BoxShape.circle, image: DecorationImage(image: AssetImage("assets/images/jpeg-optimizer_IMG_0978.JPG"), fit: BoxFit.cover)),
          ),
        ],
      ),
    );
  }
}
