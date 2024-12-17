import 'package:apk_i_1/controller/wedding_controller.dart';
import 'package:apk_i_1/screens/weeding/all/all_screen.dart';
import 'package:apk_i_1/screens/weeding/breakfast/breakfast_screen.dart';
import 'package:apk_i_1/screens/weeding/l&d/lunch_and_dinner_screen.dart';
import 'package:apk_i_1/screens/weeding/snacks/snacks_screen.dart';
import 'package:apk_i_1/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class WeedingPage extends StatelessWidget {
  const WeedingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WeddingController());
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .29,
                  width: double.infinity,
                  child: const Image(
                    image: AssetImage(
                      'assets/Rectangle.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .28,
                  color: TColor.black.withOpacity(.1),
                ),
                SafeArea(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back,
                          color: TColor.onPrimary,
                        ),
                      ),
                      Gap(MediaQuery.of(context).size.width * .26),
                      Text(
                        'Wedding',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: TColor.onPrimary,
                            ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -1,
                  left: 16,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => controller.index.value = 0,
                        child: Obx(
                          ()=> Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                              ),
                              color: controller.index.value == 0
                                  ? TColor.onPrimary
                                  : const Color(0xffd5d7d3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10.0,
                                bottom: 18,
                                left: 10,
                                right: 10,
                              ),
                              child: Text(
                                'Bulk Food Delivery',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      color: controller.index.value == 0
                                          ? TColor.primary
                                          : const Color(0xff60666C),
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -1,
                  right: 16,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => controller.index.value=1,
                        child: Obx(
                          ()=> Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                              ),
                              color:  controller.index.value == 1
                                    ? TColor.onPrimary
                                    : const Color(0xffd5d7d3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 10.0,
                                bottom: 18,
                                left: 10,
                                right: 10,
                              ),
                              child: Text(
                                'Catering Service',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      color: controller.index.value == 1
                                            ? TColor.primary
                                            : const Color(0xff60666C),
                                    ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const TabBar(
              labelColor: TColor.secondery,
              indicatorColor: TColor.secondery,
              tabs: [
                Tab(text: 'ALL (8)'),
                Tab(text: 'Breakfast'),
                Tab(text: 'Lunch & Dinner'),
                Tab(text: 'Snacks'),
              ],
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  AllScreen(),
                  BreakfastScreen(),
                  LunchAndDinnerScreen(),
                  SnacksScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
