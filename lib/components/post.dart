import 'package:flutter/material.dart';
import '../models/post.dart';
import '../constants/posts.dart' as posts_const;

class PostCard extends StatelessWidget {
  final Post post;
  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      decoration: const BoxDecoration(
        color: Color(0xFF242526),
        border: Border(
          top: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 40,
                        height: 40,
                        color: const Color(0xFF3A3B3C),
                        child: Image.asset(post.userImg, fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          post.user,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFE4E6EB),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Row(
                          children: [
                            Text(
                              post.time,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xFFB0B3B8),
                              ),
                            ),
                            const Text(
                              ' · ',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFB0B3B8),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Image.asset(
                              'assets/icons/users.png',
                              width: 12,
                              height: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Transform.translate(
                  offset: const Offset(0, -8),
                  child: Row(
                    children: [
                      Image.asset('assets/icons/more.png', width: 16, height: 16),
                      const SizedBox(width: 12),
                      Image.asset('assets/icons/x.png', width: 10, height: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Content
          if (post.text.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                post.text,
                style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xFFE4E6EB),
                  height: 1.33,
                ),
              ),
            ),
          const SizedBox(height: 4),

          // Image
          SizedBox(
            width: double.infinity,
            height: 300,
            child: Container(
              color: const Color(0xFF18191A),
              child: Image.asset(post.img, fit: BoxFit.cover, width: double.infinity),
            ),
          ),

          // Stats
          Padding(
            padding: const EdgeInsets.only(top: 4, left: 9, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Image.asset('assets/icons/love.png', width: 19, height: 19),
                        Transform.translate(
                          offset: const Offset(15, 0),
                          child: Image.asset('assets/icons/like.png', width: 19, height: 19),
                        ),
                        Transform.translate(
                          offset: const Offset(30, 0),
                          child: Image.asset('assets/icons/care.png', width: 19, height: 19),
                        ),
                      ],
                    ),
                    const SizedBox(width: 2),
                    Transform.translate(
                      offset: const Offset(32, 0),
                      child: Text(
                        '${posts_const.getRandUser()} and ${post.likes} others',
                        style: const TextStyle(fontSize: 16, color: Color(0xFFB0B3B8)),
                      ),
                    )
                  ],
                ),
                Text(
                  '${post.comments} comments',
                  style: const TextStyle(fontSize: 16, color: Color(0xFFB0B3B8)),
                ),
              ],
            ),
          ),

          // Actions
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/components/actionsBar.jpeg',
                  width: double.infinity,
                  height: 36,
                  fit: BoxFit.cover,
                ),
                Transform.translate(
                  offset: const Offset(14, 0.5),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            '${post.likes}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Color(0xFFB0B3B8),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            '${post.comments}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Color(0xFFB0B3B8),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            '${post.shares}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Color(0xFFB0B3B8),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}