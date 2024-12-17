import 'package:apk_i_1/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CatagoryWidget extends StatelessWidget {
  const CatagoryWidget({
    super.key,
    required this.imageString,
    required this.title,
    required this.subTitle,
    this.showIcon = false,
    this.borderColor,
    this.backColor,
    this.gradient,
    this.textColor,
  });

  final String imageString;
  final String title;
  final String subTitle;
  final bool showIcon;
  final Color? borderColor;
  final Color? backColor;
  final Gradient? gradient;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .18,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: gradient,
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(
                    image: AssetImage(imageString),
                    fit: BoxFit.cover,
                  ),
                ),
                if (showIcon)
                  const Positioned(
                    left: 5,
                    bottom: 0,
                    child: CircleAvatar(
                      radius: 13,
                      backgroundColor: TColor.onPrimary,
                      child: Icon(
                        Icons.check_circle,
                        color: TColor.success,
                      ),
                    ),
                  )
              ],
            ),
            const Gap(4),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Gap(4),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: borderColor ?? const Color(0xff5fd299),
                ),
                color: backColor ?? const Color(0xffecfdf3),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                child: Text(
                  subTitle,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: textColor,
                      ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
