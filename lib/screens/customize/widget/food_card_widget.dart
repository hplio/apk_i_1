import 'package:apk_i_1/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
    required this.isAdded,
    required this.imgString,
    required this.title,
    this.onPressedAdded,
    this.onPressedAdd,
  });

  final bool isAdded;
  final String imgString;
  final String title;
  final void Function()? onPressedAdded;
  final void Function()? onPressedAdd;

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(CustomizedController());
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: TColor.onPrimary,
        boxShadow: [
          BoxShadow(
            color: Colors.black
                .withOpacity(0.1), // Light shadow color with low opacity
            offset: const Offset(0, 4), // Shadow will be below the container
            blurRadius: 6, // Slightly blurred shadow
            spreadRadius: 1, // Small spread of the shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image(
                  image: AssetImage(
                    imgString,
                  ),
                  fit: BoxFit.cover, // Ensures image fills the space
                  width: double.infinity,
                ),
              ),
              const Positioned(
                bottom: 8,
                left: 4,
                child: Image(
                  image: AssetImage(
                    'assets/Universal Icons - Veg, Non-Veg and Eggetarian.png',
                  ),
                ),
              ),
            ],
          ),
          const Gap(4),
          Row(
            children: [
              const Gap(4),
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          Gap(MediaQuery.of(context).size.height * .017),
          Row(
            children: [
              Gap(MediaQuery.of(context).size.height * .018),
              SizedBox(
                width: MediaQuery.of(context).size.width * .27,
                height: MediaQuery.of(context).size.height * .047,
                child: isAdded
                    ? ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: TColor.secondery,
                          padding: const EdgeInsets.all(2),
                          side: const BorderSide(color: TColor.secondery),
                        ),
                        onPressed: onPressedAdded,
                        child: const Text(
                          'Added ',
                        ),
                      )
                    : OutlinedButton(
                        onPressed: onPressedAdd,
                        style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.all(2)),
                        child: const Text('Add'),
                      ),
              ),
            ],
          ),
          const Gap(6)
        ],
      ),
    );
  }
}
