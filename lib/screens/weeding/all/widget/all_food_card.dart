import 'package:apk_i_1/screens/customize/customize_screen.dart';
import 'package:apk_i_1/screens/weeding/all/widget/best_pooja_widget.dart';
import 'package:apk_i_1/screens/weeding/all/widget/catagories_widget.dart';
import 'package:apk_i_1/screens/weeding/all/widget/image_text_widget.dart';
import 'package:apk_i_1/screens/weeding/all/widget/person_widget.dart';
import 'package:apk_i_1/utils/colors.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class AllFoodCard extends StatelessWidget {
  const AllFoodCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: TColor.onPrimary,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color with opacity
            spreadRadius: 4, // How much the shadow spreads
            blurRadius: 7, // How soft the shadow is
            offset: const Offset(0, 3), // Offset in x and y direction
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
                child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .25,
                  child: const Image(
                    image: AssetImage(
                      'assets/image 45.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .02,
                child: const BestPoojaWidget(),
              ),
              const Positioned(
                bottom: 0,
                right: 0,
                child: PersonWidget(), //custom widget
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Indian Soiree',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * .043,
                    ),
                    const Divider(),
                    Positioned(
                      top: MediaQuery.of(context).size.height * .01,
                      child: const CategoriesItemWidget(),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .1,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (_, __) => const ImageTextWidget(),
                    separatorBuilder: (_, __) => const Gap(16),
                    itemCount: 7,
                  ),
                ),
                DottedLine(
                  dashColor: TColor.black.withOpacity(.6),
                ),
                const Gap(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '₹299',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              TextSpan(
                                text: '/guest',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Add guest count to see',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                              TextSpan(
                                text: ' Dynamic Price',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: TColor.primary,
                                    ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .06,
                      width: MediaQuery.of(context).size.width * .3,
                      child: ElevatedButton(
                        onPressed: () => Get.to(
                          const CustomizeScreen(),
                        transition: Transition.rightToLeft,
                        duration: const Duration(milliseconds: 300),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(0)
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Customize'),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
