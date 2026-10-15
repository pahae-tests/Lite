import 'package:flutter/material.dart';
import 'package:lite/screens/messages.dart';
import 'package:lite/screens/splash.dart';
import '../constants/posts.dart';
import '../constants/stories.dart';
import '../components/post.dart';
import '../components/story.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final postsList = getPosts();
    final storiesList = getStories();

    final navItems = [
      {'name': 'home', 'count': 16},
      {'name': 'friends', 'count': 16},
      {'name': 'messages', 'count': 9},
      {'name': 'notifications', 'count': 12},
      {'name': 'reels', 'count': 16},
      {'name': 'menu', 'count': 0},
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF18191A),
      body: SafeAreaView(child: Builder(builder: (context) {
        return Column(
          children: [
            // Header
            Container(
              height: 40,
              color: const Color(0xFF242526),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'facebook',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => SplashScreen(),
                          transitionDuration: Duration.zero,
                          reverseTransitionDuration: Duration.zero,
                        ),
                      );
                    },
                    child: Transform.translate(
                      offset: Offset(8, 5),
                      child: Image.asset(
                        'assets/components/searchBar.jpeg',
                        width: 110,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Top Nav (image entière cliquable → MessagesScreen)
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => MessagesScreen()),
                );
              },
              behavior: HitTestBehavior.opaque,
              child: Container(
                height: 56,
                decoration: const BoxDecoration(
                  color: Color(0xFF242526),
                  border: Border(
                    bottom: BorderSide(color: Colors.black, width: 0.5),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      top: 16,
                      child: Image.asset(
                        'assets/components/navBarHome.jpeg',
                        height: 32,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Badges de notification (purement visuels, ne bloquent pas le tap)
                    IgnorePointer(
                      child: Row(
                        children: navItems.map((el) {
                          final count = el['count'] as int;
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            width: 28,
                            height: 24,
                            child: count > 0
                                ? Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        top: 17,
                                        right: count > 15 ? -13 : -8,
                                        child: Container(
                                          width: count > 15 ? 25 : 21,
                                          height: 21,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFDF000B),
                                            borderRadius: BorderRadius.circular(50),
                                            border: Border.all(
                                              color: const Color(0xFF242526),
                                              width: 1,
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            count > 15 ? '15+' : '$count',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : null,
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Content
            Expanded(
              child: ListView(
                children: [
                  // Create Post
                  Container(
                    color: const Color(0xFF242526),
                    margin: const EdgeInsets.only(bottom: 2),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => SplashScreen(),
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    'assets/users/me.jpg',
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  bottom: -2,
                                  right: -3,
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF00B140),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: const Color(0xFF242526),
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Container(
                                height: 40,
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF3A3B3C),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: const Color(0xFF3A3B3C)),
                                ),
                                child: const Text(
                                  "What's on your mind?",
                                  style: TextStyle(color: Color(0xFFDADCE0), fontSize: 15),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Image.asset(
                                'assets/components/addPhoto.jpeg',
                                width: 34,
                                height: 42,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Stories
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => SplashScreen(),
                          transitionDuration: Duration.zero,
                          reverseTransitionDuration: Duration.zero,
                        ),
                      );
                    },
                    child: Container(
                      color: const Color(0xFF242526),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      margin: const EdgeInsets.only(bottom: 8),
                      child: SizedBox(
                        height: 180,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            const AddStoryCard(),
                            ...storiesList.map((s) => StoryCard(story: s)),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Posts
                  ...postsList.map((p) => PostCard(post: p)),
                ],
              ),
            ),
          ],
        );
      })),
    );
  }
}

class SafeAreaView extends StatelessWidget {
  final Widget child;
  const SafeAreaView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: child);
  }
}