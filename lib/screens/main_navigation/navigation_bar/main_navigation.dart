import 'package:chat_flutter/screens/main_navigation/navigation_bar/navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainNaviagtion extends ConsumerWidget {
  static const String routeName = "mainNavigation";
  final String tab;

  const MainNaviagtion({
    super.key,
    required this.tab,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.read(navigationProvider);
    final currentPage = ref.read(navigationProvider.notifier).getCurrentPage();

    return Scaffold(
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          final setIndex =
              ref.read(navigationProvider.notifier).onTap(context, index);
          return setIndex;
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: '일대일채팅',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: '그룹채팅',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts),
            label: '마이페이지',
          ),
        ],
      ),
    );
  }
}
