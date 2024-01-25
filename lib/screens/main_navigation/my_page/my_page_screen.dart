import 'package:chat_flutter/screens/main_navigation/my_page/edit_my_profile_screen.dart';
import 'package:chat_flutter/screens/main_navigation/my_page/license_screen.dart';
import 'package:chat_flutter/screens/main_navigation/my_page/setting_screen.dart';
import 'package:chat_flutter/screens/main_navigation/my_page/terms_and_policies_screen.dart';
import 'package:chat_flutter/screens/onboarding/start_onbording_screen.dart';
import 'package:chat_flutter/screens/widgets/avatar_rec.dart';
import 'package:chat_flutter/screens/widgets/my_page_list.dart';
import 'package:chat_flutter/screens/widgets/text_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class MyPageScreen extends ConsumerWidget {
  const MyPageScreen({super.key});

  void onTapEnterSettingScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SettingScreen(),
        fullscreenDialog: true,
      ),
    );
  }

  void onTapEnterEditScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const EditMyProfileScreen(),
        fullscreenDialog: true,
      ),
    );
  }

  void onTapEnterTermsScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const TermsAndPoliciesScreen(),
        fullscreenDialog: true,
      ),
    );
  }

  void onTapEnterLicenseScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LicenseScreen(),
        fullscreenDialog: true,
      ),
    );
  }

  void logout(BuildContext context) {
    context.go(StartOnboardingScreen.routeUrl);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 0.25,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
              child: Row(
                children: [
                  AvatarRec(
                    height: MediaQuery.sizeOf(context).height * 0.1,
                    width: MediaQuery.sizeOf(context).width * 0.2,
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "창자이",
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "test@test.com",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => onTapEnterSettingScreen(context),
                        child: const Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                      const Gap(10),
                      const Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 32,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const Gap(10),
          MyPageList(
            text: "내 정보 편집하기",
            onPressed: () => onTapEnterEditScreen(context),
          ),
          /* MyPageList(
            text: "이용약관",
            onPressed: () => onTapEnterTermsScreen(context),
          ), */
          MyPageList(
            text: "라이선스",
            onPressed: () => onTapEnterLicenseScreen(context),
          ),
          const Gap(10),
          const Text("앱 버전 v1.0.1"),
          const Gap(10),
          TextBtn(
            width: MediaQuery.sizeOf(context).width * 0.25,
            height: MediaQuery.sizeOf(context).height * 0.05,
            text: "로그아웃",
            textSize: 16,
            textColor: Colors.white,
            onPressed: () => logout(context),
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
