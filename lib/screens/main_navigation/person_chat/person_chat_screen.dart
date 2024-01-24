import 'package:chat_flutter/screens/main_navigation/person_chat/person_chat_detail_screen.dart';
import 'package:chat_flutter/screens/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PersonChatScreen extends ConsumerWidget {
  const PersonChatScreen({super.key});

  void _onChatTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PersonChatDetailScreen(),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("일대일채팅"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        children: [
          ChatTile(
            name: "김철수",
            content: "전화좀 받아줘..",
            time: "1주일 전",
            onPressed: () => _onChatTap(context),
          ),
          ChatTile(
            name: "김영희",
            content: "대체 어디야??",
            time: "1주일 전",
            onPressed: () => _onChatTap(context),
          ),
          ChatTile(
            name: "이진수",
            content: "채팅 접음?",
            time: "2주일 전",
            onPressed: () => _onChatTap(context),
          ),
          ChatTile(
            name: "김미영",
            content: "고객님 좋은 투자정보 있어요",
            time: "1달 전",
            onPressed: () => _onChatTap(context),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_circle_outline_rounded,
              size: 36,
            ),
          ),
        ],
      ),
    );
  }
}
