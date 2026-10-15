import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import '../constants/requests.dart';
import '../constants/spams.dart';
import '../models/message.dart';
import 'chat.dart';

class RequestsScreen extends StatefulWidget {
  const RequestsScreen({super.key, required this.isSpam});
  final bool isSpam;

  @override
  State<RequestsScreen> createState() => _RequestsScreenState();
}

class _RequestsScreenState extends State<RequestsScreen> {
  List<Message> conversations = [];
  Timer? _timer;

  int _getRandomDelay() => 1000 + Random().nextInt(36001);

  List<Message> get _source => widget.isSpam ? spams : requests;

  // Ordre initial : point de départ aléatoire (une seule fois)
  List<Message> _getConversations(int start) {
    final src = _source;
    if (src.isEmpty) return [];
    final s = start % src.length;
    return [...src.sublist(s), ...src.sublist(0, s)];
  }

  @override
  void initState() {
    super.initState();
    final src = _source;
    if (src.isNotEmpty) {
      conversations = _getConversations(Random().nextInt(src.length));
    }
    _loop();
  }

  // Empilement : le dernier élément passe en haut de la liste,
  // les autres gardent leur ordre relatif.
  // D,B,A,C  ->  C,D,B,A
  void _advance() {
    if (conversations.length < 2) return;
    setState(() {
      conversations = [
        conversations.last,
        ...conversations.sublist(0, conversations.length - 1),
      ];
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
    final isSpam = widget.isSpam;

    return Scaffold(
      backgroundColor: const Color(0xFF18191A),
      body: SafeArea(
        child: Column(
          children: [
            // Nav Bar
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => RequestsScreen(isSpam: !isSpam)),
                );
              },
              child: Container(
                width: double.infinity,
                height: 170,
                color: const Color(0xFF242526),
                child: Image.asset(
                  'assets/components/msg${isSpam ? 'Spams' : 'Reqs'}.jpeg',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Content
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Color(0xFF848484), width: 0.5),
                  ),
                ),
                child: ListView(
                  children: [
                    Container(
                      color: const Color(0xFF242526),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: conversations.map((conversation) {
                          final lastMsg = conversation.dates.last.msgs.last;
                          final unread = conversation.unread;

                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => ChatScreen(conversation: conversation),
                                ),
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
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(28),
                                      child: Image.asset(
                                        conversation.img,
                                        width: 48,
                                        height: 48,
                                        fit: BoxFit.cover,
                                      ),
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
                                            Expanded(
                                              child: Text(
                                                lastMsg,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: unread > 0
                                                      ? const Color(0xFFE4E6EB)
                                                      : const Color(0xFFB0B3B8),
                                                  fontWeight: unread > 0
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
            ),
          ],
        ),
      ),
    );
  }
}