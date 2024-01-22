import 'package:chat_flutter/const/functions.dart';
import 'package:chat_flutter/screens/widgets/gradient.dart';
import 'package:chat_flutter/screens/widgets/img_hero.dart';
import 'package:chat_flutter/screens/widgets/text_btn.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class StartOnboardingScreen extends StatelessWidget {
  const StartOnboardingScreen({super.key});

  static const String routeName = "onBoarding";
  static const String routeUrl = "/";

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
              Gap(MediaQuery.of(context).size.height * 0.05),
              const Text(
                "채팅앱",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Gap(MediaQuery.of(context).size.height * 0.05),
              const Text(
                "환영합니다 \n 채팅앱에서는 여러분들의 친구와 일대일 대화를 \n 할 수 있으며 친구들과 그룹대화를 할 수 있습니다!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          padding: EdgeInsets.zero,
          height: 100,
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.black12,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextBtn(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.4,
                    onPressed: () => Functions.onTapLoginScreen(context),
                    text: "로그인",
                    textColor: Colors.black,
                    textSize: 14,
                  ),
                  TextBtn(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.4,
                    color: Theme.of(context).primaryColor,
                    onPressed: () => Functions.onTapSignUpScreen(context),
                    text: "회원가입",
                    textColor: Colors.white,
                    textSize: 14,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
