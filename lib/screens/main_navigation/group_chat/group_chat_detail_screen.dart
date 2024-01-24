import 'package:chat_flutter/screens/widgets/auth_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class GroupChatDetailScreen extends ConsumerWidget {
  const GroupChatDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("김스날"),
      ),
      body: Stack(
        children: [
          ListView.separated(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 14,
            ),
            itemBuilder: (context, index) {
              final isMine = index % 2 == 0;
              return Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment:
                    isMine ? MainAxisAlignment.end : MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color:
                          isMine ? Colors.blue : Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(
                          20,
                        ),
                        topRight: const Radius.circular(
                          20,
                        ),
                        bottomLeft: Radius.circular(
                          isMine ? 20 : 5,
                        ),
                        bottomRight: Radius.circular(
                          !isMine ? 20 : 5,
                        ),
                      ),
                    ),
                    child: const Text(
                      "this is a message!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) => const Gap(10),
            itemCount: 10,
          ),
          Positioned(
            bottom: 0,
            width: MediaQuery.sizeOf(context).width,
            child: BottomAppBar(
              color: Colors.grey.shade50,
              child: const Row(
                children: [
                  Expanded(child: AuthTextField(hintText: "텍스트 입력하기")),
                  Gap(15),
                  FaIcon(
                    FontAwesomeIcons.paperPlane,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
