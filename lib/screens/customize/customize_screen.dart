import 'package:apk_i_1/controller/customized_controller.dart';
import 'package:apk_i_1/screens/customize/widget/catogaries_widget.dart';
import 'package:apk_i_1/screens/customize/widget/flotting_action_btn_widget.dart';
import 'package:apk_i_1/screens/customize/widget/food_card_widget.dart';
import 'package:apk_i_1/screens/customize/widget/switch_widget.dart';
import 'package:apk_i_1/screens/fill_detailes/fill_detailes_screen.dart';
import 'package:apk_i_1/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class CustomizeScreen extends StatelessWidget {
  const CustomizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CustomizedController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: TColor.onPrimary,
        foregroundColor: TColor.black,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_circle_left,
            size: 30,
            color: TColor.black,
          ),
        ),
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            color: Colors.grey,
            height: 1,
          ),
        ),
        title: Row(
          children: [
            Text(
              'South Indian Breakfast',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit_square,
                color: Color(0xff93999f),
              ),
            ),
          ],
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color
                  offset: const Offset(4, 0), // Move shadow to the right
                  blurRadius: 3, // Spread of the shadow
                  spreadRadius: 1, // Extent of shadow thickness
                ),
              ],
              color: TColor.onPrimary,
            ),
            width: MediaQuery.of(context).size.width * 0.2,
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Column(
                children: [
                  Gap(12),
                  CatagoryWidget(
                    imageString: 'assets/image 859.png',
                    title: 'Starters',
                    subTitle: '2/2',
                    showIcon: true,
                  ),
                  Gap(12),
                  CatagoryWidget(
                    imageString: 'assets/Food Item (1).png',
                    title: 'Starters',
                    subTitle: '2/2',
                    textColor: TColor.onPrimary,
                    showIcon: false,
                    backColor: TColor.primary,
                    borderColor: TColor.primary,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        TColor.onPrimary,
                        Color.fromARGB(255, 220, 173, 240)
                      ],
                    ),
                  ),
                  Gap(12),
                  CatagoryWidget(
                    imageString: 'assets/image 860.png',
                    title: 'Starters',
                    subTitle: '0/1',
                    backColor: TColor.onPrimary,
                    borderColor: TColor.dottedLine,
                    showIcon: false,
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .07,
                width: MediaQuery.of(context).size.width * .8,
                decoration: BoxDecoration(
                  color: Colors.white, // Background color
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.2), // Shadow color with transparency
                      spreadRadius: 0, // How far the shadow spreads
                      blurRadius: 6, // How soft the shadow is
                      offset: const Offset(0, 4),
                      // Shadow position: (x = 0, y = 4) means bottom only
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.eco,
                        color: Colors.green[800],
                      ),
                      Text(
                        'Pure Veg',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: Colors.green[800],
                            ),
                      ),
                      const Gap(12),
                      Obx(
                        () => SwitchWidget(
                          value: controller.isVag.value,
                          onChanged: (p0) => controller.isVag.value = p0,
                        ),
                      ),
                      const Gap(12),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: TColor.dottedLine,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Image(
                                image: AssetImage(
                                  'assets/Universal Icons - Veg, Non-Veg and Eggetarian (1).png',
                                ),
                              ),
                              const Gap(4),
                              Text(
                                'Non Veg',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                      color: Colors.red[800],
                                    ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 12.0, // Horizontal spacing
                              mainAxisSpacing: 16.0,
                              childAspectRatio: .65,
                              crossAxisCount: 2,
                            ),
                            itemBuilder: (_, index) => Obx(
                              () => FoodCard(
                                imgString: controller.imgString[index],
                                title: controller.title[index],
                                isAdded: controller.isAdded[index],
                                onPressedAdd: () => controller.isAdded[index] =
                                    !controller.isAdded[index],
                                onPressedAdded: () =>
                                    controller.isAdded[index] =
                                        !controller.isAdded[index],
                              ),
                            ),
                            itemCount: controller.imgString.length,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      floatingActionButton: const FloatingAddOnsButton(),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * .08,
        decoration: BoxDecoration(
          color: TColor.onPrimary,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // Light shadow color
              offset: const Offset(0, -2), // Negative Y offset for top shadow
              blurRadius: 4, // Soft shadow
              spreadRadius: 1, // Minimal spread
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price per plate',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: TColor.black.withOpacity(.7)),
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: '₹240',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    TextSpan(
                      text: '/Plate',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ]))
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .3,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    const FillDetailesScreen(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 300),
                  ),
                  child: const Text(
                    'Fill Details',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
