import 'package:flutter/material.dart';

class ProjectTile extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String projectId;
  final bool isActive;

  const ProjectTile({
    super.key,
    required this.imageAsset,
    required this.title,
    required this.projectId,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.redAccent : const Color(0xff1B254B),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageAsset,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 2),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Project $projectId  •  ",
                          style: const TextStyle(
                              color: Colors.white54, fontSize: 12),
                        ),
                        TextSpan(
                          text: "See project details",
                          style: const TextStyle(
                              color: Colors.blueAccent, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.edit, color: Colors.white54, size: 18),
          ],
        ),
      ),
    );
  }
}