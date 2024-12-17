import 'package:flutter/material.dart';

class TitleAndPriceWidget extends StatelessWidget {
  const TitleAndPriceWidget({
    super.key,
    required this.title,
    required this.price,
    this.isTitle = false,
  });

  final String title;
  final String price;
  final bool? isTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: isTitle!
              ? Theme.of(context).textTheme.titleMedium
              : Theme.of(context).textTheme.titleSmall,
        ),
        Text(
          price,
          style: isTitle!
              ? Theme.of(context).textTheme.titleMedium
              : Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
