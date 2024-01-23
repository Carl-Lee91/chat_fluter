import 'package:flutter/material.dart';

class LicenseTile extends StatelessWidget {
  const LicenseTile({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        subtitle,
      ),
    );
  }
}
