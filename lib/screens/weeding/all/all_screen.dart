import 'package:apk_i_1/screens/weeding/all/widget/all_food_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AllScreen extends StatelessWidget {
  const AllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (_, __) => const AllFoodCard(), // custom food card
                separatorBuilder: (_, __) => const Gap(16),
                itemCount: 4,
              ),
              const Gap(16),
            ],
          ),
        ),
      ),
    );
  }
}

