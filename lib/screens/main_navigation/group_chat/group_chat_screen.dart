import 'package:chat_flutter/screens/main_navigation/group_chat/group_chat_detail_screen.dart';
import 'package:chat_flutter/screens/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GroupChatScreen extends ConsumerWidget {
  const GroupChatScreen({super.key});

  void _onChatTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const GroupChatDetailScreen(),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("그룹채팅"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        children: [
          ChatTile(
            name: "김스날",
            content: "챔스는 가니깐 한잔해!",
            time: "1주일 전",
            onPressed: () => _onChatTap(context),
          ),
          ChatTile(
            name: "김맨유",
            content: "안토니 망할것",
            time: "1주일 전",
            onPressed: () => _onChatTap(context),
          ),
          ChatTile(
            name: "김첼시",
            content: "오늘 우리팀 장례식입니다",
            time: "2주일 전",
            onPressed: () => _onChatTap(context),
          ),
          ChatTile(
            name: "닭트넘",
            content: "우승은 없다",
            time: "1년 전",
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
