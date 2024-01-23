import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PersonChatScreen extends ConsumerWidget {
  const PersonChatScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("일대일채팅"),
      ),
      body: const Center(
        child: Text("개인채팅"),
      ),
    );
  }
}
