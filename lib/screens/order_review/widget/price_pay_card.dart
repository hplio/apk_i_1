import 'package:apk_i_1/controller/order_review_controller.dart';
import 'package:apk_i_1/screens/order_review/widget/title_price.dart';
import 'package:apk_i_1/utils/colors.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class PricePayCard extends StatelessWidget {
  const PricePayCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     final orderReviewController= Get.put(OrderReviewController());
    return Container(
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
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12)),
              gradient: LinearGradient(
                colors: [
                  Color(0xff9765CA),
                  Color(0xff7D3EBC),
                  Color(0xff7D3EBC),
                  Color(0xff6318AF),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4,
              ),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage(
                      'assets/image 619.png',
                    ),
                  ),
                  Text(
                    ' Hurray! You saved ',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(
                          color: TColor.onPrimary,
                        ),
                  ),
                  Text(
                    ' ${orderReviewController.getDiscount()}/- ',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(
                          color: TColor.gold,
                        ),
                  ),
                  Text(
                    ' on total order ',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(
                          color: TColor.onPrimary,
                        ),
                  ),
                ],
              ),
            ),
          ),
          const Gap(8),
           Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 8,
            ),
            child: Column(
              children: [
                 TitleAndPriceWidget(
                  title: 'Total',
                  price: '₹${orderReviewController.getCheckSubprice()}',
                ),
                const Gap(8),
                 TitleAndPriceWidget(
                  title: 'Dynamic pricing discount ✨',
                  price: '-₹${orderReviewController.getDiscount()}',
                ),
                const Gap(12),
                DottedLine(
                  dashColor: TColor.black.withOpacity(.5),
                ),
                const Gap(12),
                 TitleAndPriceWidget(
                  title: 'To Pay',
                  price: '₹${orderReviewController.getTotalPay()}',
                  isTitle: true,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
