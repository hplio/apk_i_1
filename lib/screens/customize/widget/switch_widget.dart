import 'package:flutter/material.dart';

class SwitchWidget extends StatelessWidget {
  const SwitchWidget({
    super.key,
    required this.value,
    this.onChanged,
  });

  final bool value;
  final void Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Switch(
      activeTrackColor: Colors.red[500],
      inactiveTrackColor:Colors.green[500] ,
      value: value,
      trackOutlineWidth: const WidgetStatePropertyAll(2),
      thumbColor: const WidgetStatePropertyAll(Colors.transparent),
      onChanged: onChanged,
      activeThumbImage: const AssetImage(
          'assets/Universal Icons - Veg, Non-Veg and Eggetarian (1).png'),
      inactiveThumbImage: const AssetImage(
          'assets/Universal Icons - Veg, Non-Veg and Eggetarian.png'),
    );
  }
}
