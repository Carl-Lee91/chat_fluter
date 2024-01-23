import 'package:chat_flutter/const/functions.dart';
import 'package:chat_flutter/screens/widgets/gradient.dart';
import 'package:chat_flutter/screens/widgets/img_hero.dart';
import 'package:chat_flutter/screens/widgets/text_btn.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class WelcomeOnboardingScreen extends StatelessWidget {
  const WelcomeOnboardingScreen({super.key});

  static const String routeName = "welcome";
  static const String routeUrl = "/welcome";

  void onEnterTab(BuildContext context) {
    context.go("/personChat");
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) => Functions.popScope(didPop, context),
      child: Scaffold(
        body: BackGroundGradient(
          innerContext: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ImgHero(),
              Gap(MediaQuery.of(context).size.height * 0.1),
              const Text(
                "환영합니다!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Gap(MediaQuery.of(context).size.height * 0.1),
              TextBtn(
                width: 150,
                height: 50,
                text: "시작하기",
                textSize: 18,
                textColor: Colors.white,
                onPressed: () => onEnterTab(context),
                color: Theme.of(context).primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
