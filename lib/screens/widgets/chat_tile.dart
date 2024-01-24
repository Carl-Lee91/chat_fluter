import 'package:chat_flutter/screens/widgets/avatar_rec.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    super.key,
    required this.onPressed,
    required this.name,
    required this.content,
    required this.time,
  });

  final void Function() onPressed;
  final String name;
  final String content;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(0.6),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Row(
            children: [
              const Gap(10),
              const AvatarRec(
                height: 60,
                width: 60,
              ),
              const Gap(10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Gap(5),
                    Row(
                      children: [
                        Text(content),
                        const Gap(10),
                        Text(
                          time,
                          style: const TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: Colors.black38,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              IconButton(
                padding: EdgeInsetsDirectional.zero,
                onPressed: onPressed,
                icon: const Icon(
                  Icons.chevron_right,
                  size: 32,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
