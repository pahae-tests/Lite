import 'package:flutter/material.dart';
import 'package:lite/screens/splash.dart';
import '../models/message.dart';

class ChatScreen extends StatelessWidget {
  final Message conversation;
  const ChatScreen({super.key, required this.conversation});

  BorderRadius _getBorderRadius({
    required bool isSingle,
    required bool isFirst,
    required bool isLast,
  }) {
    if (isSingle) {
      return BorderRadius.circular(18);
    } else if (isFirst) {
      return const BorderRadius.only(
        topLeft: Radius.circular(18),
        topRight: Radius.circular(18),
        bottomRight: Radius.circular(18),
        bottomLeft: Radius.circular(4),
      );
    } else if (isLast) {
      return const BorderRadius.only(
        topLeft: Radius.circular(4),
        topRight: Radius.circular(18),
        bottomRight: Radius.circular(18),
        bottomLeft: Radius.circular(18),
      );
    } else {
      return const BorderRadius.only(
        topLeft: Radius.circular(4),
        topRight: Radius.circular(18),
        bottomRight: Radius.circular(18),
        bottomLeft: Radius.circular(4),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final dates = conversation.dates;

    return Scaffold(
      backgroundColor: const Color(0xFF232526),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              height: 58,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xFF3A3B3C), width: 0.5),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            width: 36,
                            height: 36,
                            alignment: Alignment.center,
                            child: const Icon(
                              Icons.arrow_back,
                              color: Color(0xFFE4E6EB),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/users/${conversation.id}.jpeg',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 9),
                                Text(
                                  conversation.name,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFE4E6EB),
                                  ),
                                ),
                                const SizedBox(height: 2),
                                const Text(
                                  'Active 11m ago',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFB0B3B8),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
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
                    child: Image.asset(
                      'assets/components/chatActions.jpeg',
                      width: 120,
                      height: 54,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),

            // Content
            Expanded(
              child: ListView(
                children: [
                  // User Info Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 20),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            conversation.img,
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          conversation.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFE4E6EB),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'You are not friend on Facebook',
                          style: TextStyle(fontSize: 14, color: Color(0xFFB0B3B8)),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Lycee Zarktouni',
                          style: TextStyle(fontSize: 14, color: Color(0xFFB0B3B8)),
                        ),
                        const SizedBox(height: 16),
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
                            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                            margin: const EdgeInsets.only(bottom: 12),
                            decoration: BoxDecoration(
                              color: const Color(0xFF3D3D3D),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              'View profile',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFFB0B3B8),
                                height: 1.38,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      'Messages and calls are secured with end-to-end encryption. Only people in this chat can read, listen to, or share these. ',
                                ),
                                TextSpan(
                                  text: 'Learn more',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xFF0A66C2),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Messages
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (int dateIdx = 0; dateIdx < dates.length; dateIdx++)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (dateIdx != 0)
                                Container(
                                  width: double.infinity,
                                  margin: const EdgeInsets.symmetric(vertical: 12),
                                  alignment: Alignment.center,
                                  child: Text(
                                    dates[dateIdx].when,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFFB0B3B8),
                                    ),
                                  ),
                                ),
                              for (int msgIdx = 0; msgIdx < dates[dateIdx].msgs.length; msgIdx++)
                                _buildMessage(context, conversation.img, dates[dateIdx], msgIdx),
                            ],
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Message Input Bar
            Container(
              height: 56,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xFF242526),
                border: Border(
                  top: BorderSide(color: Color(0xFF3A3B3C), width: 0.5),
                ),
              ),
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
                child: Image.asset(
                  'assets/components/msgBar.jpeg',
                  width: double.infinity,
                  height: 48,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessage(BuildContext context, String userImg, DateGroup dateGroup, int msgIdx) {
    final msg = dateGroup.msgs[msgIdx];
    final isFirstMsg = msgIdx == 0;
    final isLastMsg = msgIdx == dateGroup.msgs.length - 1;
    final isSingleMsg = dateGroup.msgs.length == 1;

    final borderRadius = _getBorderRadius(
      isSingle: isSingleMsg,
      isFirst: isFirstMsg,
      isLast: isLastMsg,
    );

    Widget content;

    if (msg == '%like%') {
      content = Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (isLastMsg)
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                userImg,
                width: 28,
                height: 28,
                fit: BoxFit.cover,
              ),
            ),
          if (isLastMsg) const SizedBox(width: 8),
          Container(
            width: 44,
            height: 44,
            margin: !isLastMsg ? const EdgeInsets.only(left: 36) : null,
            alignment: Alignment.center,
            child: Image.asset(
              'assets/components/like.jpeg',
              width: 44,
              height: 44,
            ),
          ),
        ],
      );
    } else if (msg.contains('.')) {
      content = Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (isLastMsg)
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                userImg, // img dial luser
                width: 28,
                height: 28,
                fit: BoxFit.cover,
              ),
            ),
          if (isLastMsg) const SizedBox(width: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 260,
              height: 200,
              margin: !isLastMsg ? const EdgeInsets.only(left: 36) : null,
              child: Image.asset(
                msg.replaceAll("%", ""),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      );
    } else {
      content = Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (isLastMsg)
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                userImg,
                width: 28,
                height: 28,
                fit: BoxFit.cover,
              ),
            ),
          if (isLastMsg) const SizedBox(width: 8),
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.75,
            ),
            margin: !isLastMsg ? const EdgeInsets.only(left: 36) : null,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
              color: const Color(0xFF3A3B3C),
              borderRadius: borderRadius,
            ),
            child: Text(
              msg,
              style: const TextStyle(
                fontSize: 15,
                color: Color(0xFFE4E6EB),
                height: 1.33,
              ),
            ),
          ),
        ],
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 1),
      child: content,
    );
  }
}