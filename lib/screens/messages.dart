import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:lite/screens/feed.dart';
import 'package:lite/screens/splash.dart';
import '../constants/messages.dart';
import '../models/message.dart';
import '../screens/chat.dart';
import '../screens/requests.dart';

class MessagesScreen extends StatefulWidget {
  final int initialMsgStart;
  const MessagesScreen({super.key, this.initialMsgStart = 0});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  late int msgStart;
  List<Message> messages = [];
  Timer? _timer;

  // Prénoms hardcodés pour la barre des utilisateurs actifs
  // (seules les images viennent du fichier des constantes)
  static const List<String> _activeNames = [
    'Salma',
    'Imane',
    'Hajar',
    'Aya',
    'Rania',
    'Kenza',
  ];

  // Tirés une seule fois dans initState
  late final List<Message> activeUsers;

  int _getRandomDelay() => 1000 + Random().nextInt(36001);

  @override
  void initState() {
    super.initState();
    msgStart = widget.initialMsgStart;

    // Tirage unique de 6 utilisateurs distincts depuis msgs (pour les images)
    final picked = <int>{};
    while (picked.length < _activeNames.length) {
      picked.add(getRand(msgs.length) - 1); // getRand renvoie 1..max
    }
    activeUsers = picked.map((i) => msgs[i]).toList();

    // Ordre initial (point de départ aléatoire, une seule fois)
    messages = getMsgs(Random().nextInt(msgs.length));
    _loop();
  }

  // Empilement : le dernier élément passe en haut de la liste,
  // les autres gardent leur ordre relatif.
  // D,B,A,C  ->  C,D,B,A
  void _advance() {
    if (messages.length < 2) return;
    setState(() {
      messages = [messages.last, ...messages.sublist(0, messages.length - 1)];
    });
  }

  void _loop() {
    _timer = Timer(Duration(milliseconds: _getRandomDelay()), () {
      if (!mounted) return;
      _advance();
      _loop();
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final navItems = [
      {'name': 'home', 'count': 16},
      {'name': 'friends', 'count': 16},
      {'name': 'messages', 'count': 0},
      {'name': 'notifications', 'count': 12},
      {'name': 'reels', 'count': 16},
      {'name': 'menu', 'count': 0},
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF18191A),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                // Top Nav
                Container(
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
                          'assets/components/navBarMsgs.jpeg',
                          height: 32,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        children: navItems.map((el) {
                          final count = el['count'] as int;
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => FeedScreen()),
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 18),
                              width: 24,
                              height: 24,
                              child: count > 0
                                  ? Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    top: 16,
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
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),

                // Top Bar
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => SplashScreen()));
                  },
                  child: Container(
                    height: 56,
                    color: const Color(0xFF242526),
                    child: Stack(
                      children: [
                        Positioned(
                          left: -8,
                          right: 0,
                          top: 0,
                          child: Image.asset(
                            'assets/components/msgsTopBar.jpeg',
                            height: 50,
                            width: double.infinity,
                            fit: BoxFit.cover,
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
                      // Active Users
                      Container(
                        color: const Color(0xFF242526),
                        padding: const EdgeInsets.only(top: 16),
                        child: SizedBox(
                          height: 100,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: activeUsers.asMap().entries.map((entry) {
                              final user = entry.value;
                              final online = user.online;
                              final img = user.img; // image depuis les constantes
                              final name = _activeNames[entry.key]; // nom hardcodé
                              return Container(
                                width: 70,
                                margin: const EdgeInsets.only(left: 4),
                                child: Column(
                                  children: [
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
                                      child: SizedBox(
                                        width: 60,
                                        height: 60,
                                        child: Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(30),
                                              child: Image.asset(
                                                img,
                                                width: 60,
                                                height: 60,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            if (online)
                                              Positioned(
                                                bottom: 0,
                                                right: 0,
                                                child: Container(
                                                  width: 16,
                                                  height: 16,
                                                  decoration: BoxDecoration(
                                                    color: const Color(0xFF00B140),
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: const Color(0xFF242526),
                                                      width: 3,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      name,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 13,
                                        color: Color(0xFFE4E6EB),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),

                      // Message Requests Bar
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => RequestsScreen(isSpam: false)));
                        },
                        child: Container(
                          height: 52,
                          color: const Color(0xFF242526),
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                right: 0,
                                top: 0,
                                child: Image.asset(
                                  'assets/components/msgsReq.jpeg',
                                  height: 46,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 38),
                            ],
                          ),
                        ),
                      ),

                      // Conversations List
                      Container(
                        color: const Color(0xFF242526),
                        child: Column(
                          children: messages.map((conversation) {
                            final lastDate = conversation.dates.last;
                            final lastMsg = lastDate.msgs.last == "%like%"
                                ? "👍"
                                : (lastDate.msgs.last.startsWith("%assets")
                                ? "Sent you a photo"
                                : lastDate.msgs.last);
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (_) => ChatScreen(conversation: conversation)),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 16,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 12),
                                      width: 48,
                                      height: 48,
                                      child: Stack(
                                        clipBehavior: Clip.none,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(28),
                                            child: Image.asset(
                                              conversation.img,
                                              width: 48,
                                              height: 48,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          if (conversation.online)
                                            Positioned(
                                              bottom: 0,
                                              right: 0,
                                              child: Container(
                                                width: 16,
                                                height: 16,
                                                decoration: BoxDecoration(
                                                  color: const Color(0xFF00B140),
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    color: const Color(0xFF242526),
                                                    width: 3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                conversation.name,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFFE4E6EB),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 4),
                                          Row(
                                            children: [
                                              if (conversation.unread > 0) ...[
                                                Container(
                                                  width: 16,
                                                  height: 16,
                                                  decoration: BoxDecoration(
                                                    color: const Color(0xFFDF000B),
                                                    borderRadius: BorderRadius.circular(50),
                                                  ),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    '${conversation.unread}',
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(width: 6),
                                              ],
                                              Expanded(
                                                child: Text(
                                                  lastMsg,
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: conversation.unread > 0
                                                        ? const Color(0xFFE4E6EB)
                                                        : const Color(0xFFB0B3B8),
                                                    fontWeight: conversation.unread > 0
                                                        ? FontWeight.bold
                                                        : FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Floating Action Button
            Positioned(
              bottom: 24,
              right: 24,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2D88FF),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(0, 4),
                        blurRadius: 4.65,
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    '+',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}