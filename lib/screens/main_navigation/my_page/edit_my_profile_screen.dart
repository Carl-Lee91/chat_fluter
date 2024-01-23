import 'package:chat_flutter/const/functions.dart';
import 'package:chat_flutter/screens/widgets/avatar_rec.dart';
import 'package:chat_flutter/screens/widgets/edit_textfield.dart';
import 'package:chat_flutter/screens/widgets/text_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class EditMyProfileScreen extends ConsumerWidget {
  const EditMyProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => Functions.onScaffoldTap(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "내 정보 편집하기",
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            child: Column(
              children: [
                Center(
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.4,
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0, 0),
                          child: AvatarRec(
                            height: MediaQuery.sizeOf(context).height * 0.2,
                            width: MediaQuery.sizeOf(context).width * 0.4,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(1, -1),
                          child: ClipOval(
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: const Color(0xFF57636C),
                                    width: 4,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.edit,
                                  size: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      EditTextField(
                        height: MediaQuery.sizeOf(context).height * 0.06,
                        hintText: "닉네임",
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      EditTextField(
                        height: MediaQuery.sizeOf(context).height * 0.12,
                        hintText: "소개글",
                      ),
                    ],
                  ),
                ),
                const Gap(40),
                TextBtn(
                  width: 120,
                  height: 40,
                  text: "변경하기",
                  textSize: 16,
                  textColor: Colors.white,
                  onPressed: () {},
                  color: Colors.amber,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
