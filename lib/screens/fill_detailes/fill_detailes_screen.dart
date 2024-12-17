import 'package:apk_i_1/controller/fill_detailes_controller.dart';
import 'package:apk_i_1/screens/fill_detailes/widget/containner_icon_widget.dart';
import 'package:apk_i_1/screens/order_review/order_review_screen.dart';
import 'package:apk_i_1/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class FillDetailesScreen extends StatelessWidget {
  const FillDetailesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FillDetailesController());
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
        title: Text(
          'Fill Details',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const Image(
                    image: AssetImage('assets/Service Icons.png'),
                    height: 30,
                  ),
                  const Gap(8),
                  Text(
                    'South Indian Breakfast',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit_square,
                      color: Color(0xff93999f),
                      size: 20,
                    ),
                  ),
                ],
              ),
              const Gap(12),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Occasion ',
                          style:
                              Theme.of(context).textTheme.labelMedium!.copyWith(
                                    fontSize: 14,
                                  ),
                        ),
                        const Gap(8),
                        DropdownButtonHideUnderline(
                          child: Expanded(
                            child: Obx(
                              () => DropdownButton<String>(
                                value: controller.selectedValue.value,
                                hint: const Text(
                                  'Select an option',
                                ), // Placeholder text
                                isExpanded:
                                    true, // Makes the dropdown expand to the width of the parent
                                icon: const Icon(Icons.arrow_drop_down),
                                items: controller.items.map(
                                  (value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  },
                                ).toList(),
                                onChanged: (String? value) {
                                  controller.selectedValue.value = value ?? '';
                                },
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const Gap(4),
                    const Divider(),
                    const Gap(4),
                    Text(
                      'Date and Time',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const Gap(8),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2100),
                              initialDate: DateTime.now(),
                            );
                            if (pickedDate != null) {
                              controller.selectedDate.value =
                                  controller.getDate(pickedDate);
                            }
                          },
                          child: Obx(
                            () => ContainnerWidget(
                              title: controller.selectedDate.value.isEmpty
                                  ? '12/11/2024'
                                  : controller.selectedDate.value,
                              icon: Icons.calendar_today,
                            ),
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () async {
                            TimeOfDay? pickTime = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now(),
                            );
                            if (pickTime != null) {
                              DateTime time = DateTime(
                                  2024, 1, 1, pickTime.hour, pickTime.minute);
                              controller.selectedTime.value =
                                  controller.getTime(time);
                            }
                          },
                          child: Obx(
                            () => ContainnerWidget(
                              title: controller.selectedTime.value.isEmpty
                                  ? '2:00 - 4:00 pm'
                                  : controller.selectedTime.value,
                              icon: Icons.access_time,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Price Per Plate:',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Row(
                          children: [
                            Text(
                              '20%',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color: Colors.green,
                                  ),
                            ),
                            const Icon(Icons.arrow_downward),
                            Text(
                              ' ₹299 ',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color: TColor.black.withOpacity(.7),
                                    decoration: TextDecoration.lineThrough,
                                  ),
                            ),
                            Obx(
                              () => Text(
                                ' ₹${controller.dynamicPrice.value.toString()}',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Gap(4),
                    const Divider(),
                    const Gap(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Guests',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                controller.decressValue();
                                controller.dynamicPrice.value =
                                    controller.calculatePrice(
                                        controller.sliderValue.value.toInt());
                              },
                              icon: const Icon(
                                Icons.remove,
                                color: TColor.primary,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: TColor.black.withOpacity(.5),
                                ),
                              ),
                              child: Obx(
                                () => Text(
                                  '${controller.sliderValue.value.toInt()}',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                controller.incressValue();
                                controller.dynamicPrice.value =
                                    controller.calculatePrice(
                                        controller.sliderValue.value.toInt());
                              },
                              icon: const Icon(
                                Icons.add,
                                color: TColor.primary,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Gap(12),
                    Obx(
                      () => FlutterSlider(
                        handler: FlutterSliderHandler(
                          foregroundDecoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: const Icon(
                            Icons.person,
                            color: TColor.primary,
                            size: 30,
                          ),
                        ),
                        onDragging: (handlerIndex, lowerValue, upperValue) {
                          controller.sliderValue.value = lowerValue;
                          // print(lowerValue.toInt().runtimeType);
                          controller.dynamicPrice.value =
                              controller.calculatePrice(lowerValue.toInt());
                        },
                        trackBar: FlutterSliderTrackBar(
                          activeTrackBarHeight: 5,
                          inactiveTrackBarHeight: 5,
                          activeTrackBar: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          inactiveTrackBar: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        tooltip: FlutterSliderTooltip(
                          leftPrefix: const Text('₹'),
                          // rightSuffix: const Text(' min'),
                        ),
                        values: [controller.sliderValue.value],
                        min: 10.0,
                        max: 1500.0,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '10',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              TextSpan(
                                text: '(min)',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '1500',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),
                    const Gap(4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('✨'),
                        Text.rich(TextSpan(children: [
                          TextSpan(
                            text: ' DYNAMIC PRICING ',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                  color: TColor.primary,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          TextSpan(
                            text: 'more guests, more savings.',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ]))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
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
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .7,
          child: ElevatedButton(
            onPressed: () => Get.to(
              const OrderReviewScree(),
              transition: Transition.rightToLeft,
              duration: const Duration(milliseconds: 300),
            ),
            child: const Text('Order Review'),
          ),
        ),
      ),
    );
  }
}
