import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventCard extends StatelessWidget {
  final String title;
  final int count;
  final String buttonText;
  final List<String> images;

  const EventCard({
    required this.title,
    required this.count,
    required this.buttonText,
    required this.images,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: 250,
        height: 250,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xff3C354B),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images
                  .map(
                    (img) => ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(color: Color(0xff4A435C), borderRadius: BorderRadius.circular(50)),
                      child: Image.asset(
                        img,
                        width: 50,
                        height: 50,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              )
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Total",
                    style: TextStyle(color: Color(0xff8C7CB4), fontSize: 18)),
                const SizedBox(width: 40),
                Container(
                  height: 30, // Explicit height for the Vertical Divider
                  width: 1, // Divider width
                  color: Color(0xff85818D),
                ),
                const SizedBox(width: 10),
                Text("$count",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                const SizedBox(width: 10),
                Container(
                  height: 30, // Explicit height for the Vertical Divider
                  width: 1, // Divider width
                  color: Color(0xff85818D),

                ),
                const SizedBox(width: 70),
              ],
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xffAD6CEC),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.telegramPlane,
                    color: Colors.white),
                label: Text(buttonText,
                    style: const TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
