import 'package:chat_flutter/screens/widgets/license_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class LicenseScreen extends ConsumerWidget {
  const LicenseScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "라이선스",
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
          vertical: 10,
          horizontal: 10,
        ),
        child: ListView(
          children: const [
            LicenseTile(
              title: "Uxwing",
              subtitle: "Thanks for free icon.",
            ),
            Gap(10),
            LicenseTile(
              title: "FlutterFlow",
              subtitle: "Thanks for help making UI.",
            ),
            Gap(10),
            LicenseTile(
              title: "Figma",
              subtitle: "Thanks for help making blueprint.",
            ),
            Gap(10),
            LicenseTile(
              title: "Asana",
              subtitle: "Thanks for help managing TODO list.",
            ),
            Gap(10),
            LicenseTile(
              title: "Github",
              subtitle: "Thanks for storage.",
            ),
            Gap(10),
            LicenseTile(
              title: "Visual Studio Code",
              subtitle: "Thanks for great IDE.",
            ),
            Gap(10),
            LicenseTile(
              title: "Firebase",
              subtitle: "Thanks for free server.",
            ),
            Gap(10),
            LicenseTile(
              title: "Dart & Flutter",
              subtitle:
                  "And thanks for suuuuuuper great crossplatform language & framework.",
            ),
            Gap(10),
            AboutListTile(
              applicationName: "플러터채팅앱",
              applicationLegalese: "Thanks for these licenses",
              applicationVersion: "v1.0.0",
            ),
          ],
        ),
      ),
    );
  }
}
