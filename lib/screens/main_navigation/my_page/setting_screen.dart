import 'package:chat_flutter/screens/widgets/setting_tile.dart';
import 'package:chat_flutter/screens/widgets/theme_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class SettingScreen extends ConsumerWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "설정",
          style: TextStyle(
            color: Theme.of(context).secondaryHeaderColor,
          ),
        ),
        iconTheme: IconThemeData(
          color: Theme.of(context).secondaryHeaderColor,
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("알림 및 테마를 설정하세요."),
            const Gap(10),
            SettingTile(
              title: "알림설정",
              subtitle: "앱의 작동여부와 상관없이 알림을 받습니다",
              onChanged: (newValue) {},
            ),
            SettingTile(
              title: "이메일설정",
              subtitle: "광고성 이메일을 받습니다",
              onChanged: (newValue) {},
            ),
            const Gap(20),
            const TurnLightOrDarkMode()
          ],
        ),
      ),
    );
  }
}
