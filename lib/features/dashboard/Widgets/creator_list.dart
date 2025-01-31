import 'package:flutter/material.dart';

class CreatorTile extends StatelessWidget {
  final String imageAsset;
  final String username;
  final String artworks;
  final double progress;

  const CreatorTile({
    super.key,
    required this.imageAsset,
    required this.username,
    required this.artworks,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xff1B254B),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                imageAsset,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width:25),
            Expanded(
              flex: 3,
              child: Text(
                username,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                artworks,
                style: const TextStyle(color: Colors.white, fontSize: 14),
                textAlign: TextAlign.center, // Align text properly
              ),
            ),
            Expanded(
              flex: 2,
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.grey[700],
                color: const Color(0xff7552FF),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
