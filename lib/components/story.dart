import 'package:flutter/material.dart';
import '../models/story.dart';

class StoryCard extends StatelessWidget {
  final Story story;
  const StoryCard({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    final parts = story.user.split(' ');
    final hasSpace = parts.length > 1;

    return Container(
      width: 110,
      margin: const EdgeInsets.only(right: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: SizedBox(
          width: 110,
          height: 180,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(story.img, fit: BoxFit.cover),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  width: 20,
                  height: 26,
                  decoration: BoxDecoration(
                    color: const Color(0xFF3060FF),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '${story.sum}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: hasSpace ? 26 : 8,
                left: 8,
                child: Text(
                  parts[0],
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFE4E6EB),
                  ),
                ),
              ),
              if (hasSpace)
                Positioned(
                  bottom: 8,
                  left: 8,
                  child: Text(
                    parts[1],
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFE4E6EB),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddStoryCard extends StatelessWidget {
  const AddStoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      margin: const EdgeInsets.only(left: 16, right: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 110,
          height: 180,
          color: const Color(0xFF3A3B3C),
          child: Column(
            children: [
              SizedBox(
                width: 110,
                height: 135,
                child: Image.asset('assets/users/me.jpg', fit: BoxFit.cover),
              ),
              Expanded(
                child: Transform.translate(
                  offset: const Offset(0, -16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white),
                          color: const Color(0xFF2D88FF),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          '+',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        'Create story',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFE4E6EB),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}