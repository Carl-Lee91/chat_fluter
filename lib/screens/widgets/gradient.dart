import 'package:flutter/material.dart';

class BackGroundGradient extends StatelessWidget {
  const BackGroundGradient({
    super.key,
    required this.innerContext,
  });

  final Widget innerContext;

  @override
  Widget build(BuildContext context) {
    List<Color> gradientColor = [
      Theme.of(context).primaryColor,
      Colors.white,
    ];
    return Column(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: gradientColor,
                stops: const [0, 1],
                begin: const AlignmentDirectional(0, -1),
                end: const AlignmentDirectional(0, 1),
              ),
            ),
            child: innerContext,
          ),
        ),
      ],
    );
  }
}
