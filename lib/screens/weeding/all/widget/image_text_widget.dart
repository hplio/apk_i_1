import 'package:apk_i_1/utils/colors.dart';
import 'package:flutter/material.dart';

class ImageTextWidget extends StatelessWidget {
  const ImageTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height:
              MediaQuery.of(context).size.height *
                  .06,
          child: const Image(
            image: AssetImage(
              'assets/Food Item.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        Text(
          '2 Starter',
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(
                color: TColor.black,
              ),
        ),
      ],
    );
  }
}
