import 'package:flutter/material.dart';

class SettingTile extends StatelessWidget {
  const SettingTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onChanged,
  });

  final String title;
  final String subtitle;
  final void Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SwitchListTile.adaptive(
        contentPadding: EdgeInsets.zero,
        value: true,
        onChanged: onChanged,
        activeColor: Colors.white,
        activeTrackColor: Theme.of(context).primaryColor,
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(subtitle),
      ),
    );
  }
}
