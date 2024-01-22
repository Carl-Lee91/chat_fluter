import 'package:chat_flutter/const/functions.dart';
import 'package:chat_flutter/screens/auth/signup/signup_screen_else.dart';
import 'package:chat_flutter/screens/widgets/auth_textfield.dart';
import 'package:chat_flutter/screens/widgets/gradient.dart';
import 'package:chat_flutter/screens/widgets/img_hero.dart';
import 'package:chat_flutter/screens/widgets/text_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class SignUpAuthScreen extends ConsumerWidget {
  const SignUpAuthScreen({super.key});

  static const String routeName = "signUpAuth";
  static const String routeUrl = "/signUp";

  void onTapNextScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SignUpElseScreen(),
      ),
    );
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
                    hintText: "아이디",
                  ),
                  Gap(MediaQuery.of(context).size.height * 0.02),
                  const AuthTextField(
                    hintText: "휴대폰번호",
                  ),
                  Gap(MediaQuery.of(context).size.height * 0.02),
                  TextBtn(
                    width: 80,
                    height: 30,
                    text: "인증번호받기",
                    textSize: 12,
                    textColor: Colors.white,
                    onPressed: () {},
                    color: Theme.of(context).primaryColor,
                  ),
                  Gap(MediaQuery.of(context).size.height * 0.02),
                  const AuthTextField(
                    hintText: "인증번호",
                  ),
                  Gap(MediaQuery.of(context).size.height * 0.02),
                  TextBtn(
                    width: 100,
                    height: 40,
                    text: "다음",
                    textSize: 16,
                    textColor: Colors.white,
                    onPressed: () => onTapNextScreen(context),
                    color: Theme.of(context).primaryColor,
                  ),
                  Gap(MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "계정이 있으십니까?",
                        style: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                      Gap(MediaQuery.of(context).size.width * 0.02),
                      GestureDetector(
                        onTap: () => Functions.onTapLoginScreen(context),
                        child: Text(
                          "로그인",
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
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
