import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TurnLightOrDarkMode extends StatelessWidget {
  const TurnLightOrDarkMode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFFF1F4F8),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.transparent,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  /* setDarkModeSetting(context, ThemeMode.light); */
                },
                child: Container(
                  width: 115,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.light
                        ? Colors.white
                        : const Color(0xFFF1F4F8),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.transparent
                          : const Color(0xFFF1F4F8),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.wb_sunny_rounded,
                        color: Theme.of(context).brightness == Brightness.light
                            ? const Color(0xFF15161E)
                            : const Color(0xFF606A85),
                        size: 16,
                      ),
                      const Gap(5),
                      Text(
                        "라이트",
                        style: TextStyle(
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? const Color(0xFF15161E)
                                  : const Color(0xFF606A85),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  /* setDarkModeSetting(context, ThemeMode.dark); */
                },
                child: Container(
                  width: 115,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : const Color(0xFFF1F4F8),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.transparent
                          : const Color(0xFFF1F4F8),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.nightlight_round,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? const Color(0xFF15161E)
                            : const Color(0xFF606A85),
                        size: 16,
                      ),
                      const Gap(5),
                      Text(
                        "다크",
                        style: TextStyle(
                          color: Theme.of(context).brightness == Brightness.dark
                              ? const Color(0xFF15161E)
                              : const Color(0xFF606A85),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
