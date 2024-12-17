import 'package:apk_i_1/utils/colors.dart';
import 'package:flutter/material.dart';

class BestPoojaWidget extends StatelessWidget {
  const BestPoojaWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          bottomLeft: Radius.circular(0),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
        gradient: LinearGradient(
          colors: [
            Color(0xFFA300A3),
            Color(0xFF0B003D),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ),
        child: Text(
          'Best for 🪔 Pooja',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(
                color: TColor.onPrimary,
              ),
        ),
      ),
    );
  }
}
