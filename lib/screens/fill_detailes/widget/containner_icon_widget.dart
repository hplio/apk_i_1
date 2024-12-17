import 'package:apk_i_1/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ContainnerWidget extends StatelessWidget {
  const ContainnerWidget({
    super.key,
    this.icon,
    required this.title,
  });
  final IconData? icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: TColor.dottedLine),
        borderRadius: BorderRadius.circular(8),
      ),
      child:  Row(
        children: [
          Icon(icon, color: Colors.purple),
          const Gap(8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.normal
            )
          ),
        ],
      ),
    );
  }
}
