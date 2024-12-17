import 'package:apk_i_1/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PersonWidget extends StatelessWidget {
  const PersonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TColor.onPrimary.withOpacity(.8),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(8),
          topLeft: Radius.circular(8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.person,
              color: TColor.black,
            ),
            const Gap(4),
            Text(
              'Min 10 - Max 120',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(
                    color: TColor.black,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
