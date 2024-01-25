import 'package:chat_flutter/screens/auth/views/login_screen.dart';
import 'package:chat_flutter/screens/auth/views/sign_up_screen_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class Functions {
  static void onScaffoldTap(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  static void onTapLoginScreen(BuildContext context) {
    context.pushNamed(LoginScreen.routeName);
  }

  static void onTapSignUpScreen(BuildContext context) {
    context.pushNamed(SignUpAuthScreen.routeName);
  }

  static void popScope(bool didPop, BuildContext context) {
    if (didPop) {
      return;
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("앱 종료하기"),
          content: const Text("채팅앱(가제)를 종료하시겠습니까?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text("아니오"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
                SystemNavigator.pop();
              },
              child: const Text("예"),
            ),
          ],
        ),
      );
    }
  }
}
