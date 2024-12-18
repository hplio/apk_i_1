import 'package:apk_i_1/controller/fill_detailes_controller.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class OrderReviewController extends GetxController {
  static OrderReviewController get instatnce => Get.find();

  final controller = Get.put(FillDetailesController());
  final checkSubPrice = 24600.obs;
  final subPrice = 22200.obs;

  String getCheckSubprice() {
    final cSubP =
        controller.sliderValue.value.toInt() * controller.dynamicPrice.value;
    return formatedNumber(cSubP);
  }

  String getDiscount() {
    final sPrice = (299 * controller.sliderValue.value.toInt()) -
        (controller.sliderValue.value.toInt() * controller.dynamicPrice.value);
    return formatedNumber(sPrice);
  }

  String payPrice() {
    final pPrice =
        (controller.sliderValue.value.toInt() * controller.dynamicPrice.value) -
            ((299 * controller.sliderValue.value.toInt()) -
                (controller.sliderValue.value.toInt() *
                    controller.dynamicPrice.value));
    return formatedNumber(pPrice);
  }

  String getTotalPay() {
    final payPrice =
        (controller.sliderValue.value.toInt() * controller.dynamicPrice.value);
    return formatedNumber(payPrice);
  }

  String formatedNumber(number) {
    final formattedNumber = NumberFormat.decimalPattern().format(number);
    return formattedNumber;
  }
}
