import 'package:chat_flutter/const/functions.dart';
import 'package:chat_flutter/screens/onboarding/welcome_onbording_screen.dart';
import 'package:chat_flutter/screens/widgets/auth_textfield.dart';
import 'package:chat_flutter/screens/widgets/gradient.dart';
import 'package:chat_flutter/screens/widgets/img_hero.dart';
import 'package:chat_flutter/screens/widgets/text_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SignUpElseScreen extends ConsumerWidget {
  const SignUpElseScreen({super.key});

  void onTapWelcomeScreen(BuildContext context) {
    context.pushNamed(WelcomeOnboardingScreen.routeName);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => Functions.onScaffoldTap(context),
      child: Scaffold(
        body: BackGroundGradient(
          innerContext: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.18,
              ),
              child: Column(
                children: [
                  const ImgHero(),
                  Gap(MediaQuery.of(context).size.height * 0.05),
                  const Text(
                    "회원가입",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Gap(MediaQuery.of(context).size.height * 0.02),
                  const Text(
                    "가입을 원하시면 아래 내용을 기입해주세요.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Gap(MediaQuery.of(context).size.height * 0.02),
                  const AuthTextField(
                    hintText: "닉네임",
                  ),
                  Gap(MediaQuery.of(context).size.height * 0.02),
                  const AuthTextField(
                    hintText: "비밀번호",
                  ),
                  Gap(MediaQuery.of(context).size.height * 0.02),
                  const AuthTextField(
                    hintText: "비밀번호확인",
                  ),
                  Gap(MediaQuery.of(context).size.height * 0.02),
                  TextBtn(
                    width: 100,
                    height: 40,
                    text: "회원가입",
                    textSize: 16,
                    textColor: Colors.white,
                    onPressed: () => onTapWelcomeScreen(context),
                    color: Theme.of(context).primaryColor,
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
