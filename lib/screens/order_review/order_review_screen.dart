import 'package:apk_i_1/controller/fill_detailes_controller.dart';
import 'package:apk_i_1/controller/order_review_controller.dart';
import 'package:apk_i_1/screens/order_review/widget/price_pay_card.dart';
import 'package:apk_i_1/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class OrderReviewScree extends StatelessWidget {
  const OrderReviewScree({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FillDetailesController());
    final orderReviewController= Get.put(OrderReviewController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            color: Colors.grey,
            height: 1,
          ),
        ),
        title: Text(
          'Order Review',
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
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Image(
                                  image: AssetImage('assets/Service Icons.png'),
                                  height: 30,
                                ),
                                const Gap(8),
                                Text(
                                  'Millet Breakfast',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Edit',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      color: TColor.secondery,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            const Icon(Icons.person),
                            const Gap(2),
                            Text(controller.sliderValue.toInt().toString()),
                            const Gap(18),
                            const Icon(Icons.calendar_today),
                            const Gap(2),
                            Text(controller.selectedDate.value.isEmpty
                                ? '12/11/2024'
                                : controller.selectedDate.value),
                            const Gap(18),
                            const Icon(Icons.access_time),
                            const Gap(2),
                            Text(
                              controller.selectedTime.value.isEmpty
                                  ? '2:00 - 4:00 pm'
                                  : controller.selectedTime.value,
                            ),
                          ],
                        ),
                      ),
                      const Gap(8),
                      const Divider(),
                      const Gap(8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Hide selected items',
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            const Icon(Icons.keyboard_arrow_up_outlined)
                          ],
                        ),
                      ),
                      const Gap(8),
                      const Divider(),
                      const Gap(8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Subtotal  ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      TextSpan(
                                        text: orderReviewController.getCheckSubprice(),
                                        // text: '₹24,600',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                              color:
                                                  TColor.black.withOpacity(.5),
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            ),
                                      ),
                                      TextSpan(
                                        text: '  ${orderReviewController.payPrice()}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  'Incl. taxes and charges',
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward_ios),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Gap(18),
              const PricePayCard()
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
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
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'To pay',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  orderReviewController.payPrice(),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width*.3,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Place Order'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

