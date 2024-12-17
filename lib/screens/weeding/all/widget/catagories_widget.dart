import 'package:flutter/material.dart';

class CategoriesItemWidget extends StatelessWidget {
  const CategoriesItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
        color: Color(0xfffefaec),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          '7 Categories & 12 Items',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(
                color: const Color(
                  0xffdc6803,
                ),
              ),
        ),
      ),
    );
  }
}
