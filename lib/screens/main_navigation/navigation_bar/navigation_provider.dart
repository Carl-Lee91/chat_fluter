import 'package:chat_flutter/screens/main_navigation/group_chat/group_chat_screen.dart';
import 'package:chat_flutter/screens/main_navigation/my_page/my_page_screen.dart';
import 'package:chat_flutter/screens/main_navigation/person_chat/person_chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class NavigationNotifier extends StateNotifier<int> {
  NavigationNotifier() : super(0);

  Widget getCurrentPage() {
    switch (state) {
      case 0:
        return const PersonChatScreen();
      case 1:
        return const GroupChatScreen();
      case 2:
        return const MyPageScreen();
      default:
        return const PersonChatScreen();
    }
  }

  List<String> tabs = [
    "personChat",
    "groupChat",
    "myPage",
  ];

  void onTap(BuildContext context, int index) {
    context.go("/${tabs[index]}");
    state = index;
  }
}

final navigationProvider = StateNotifierProvider<NavigationNotifier, int>(
  (ref) => NavigationNotifier(),
);
