import 'package:flutter/material.dart';

class ImgHero extends StatelessWidget {
  const ImgHero({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "chatImg",
      child: Container(
        width: 160,
        height: 160,
        decoration: const BoxDecoration(
          color: Color(0xCCFFFFFF),
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Opacity(
            opacity: 0.8,
            child: Image.asset(
              "assets/images/group-chat-icon.png",
            ),
          ),
        ),
      ),
    );
  }
}
