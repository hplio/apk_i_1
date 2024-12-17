import 'package:get/get.dart';
import 'package:intl/intl.dart';

class FillDetailesController extends GetxController {
  static FillDetailesController get instance => Get.find();

  final selectedValue = 'Birthday'.obs;
  // String? selectedValue;
  // late Rx<String>selectedValue;
  final items = ['Birthday', 'Wedding', 'Anniversary'].obs;
  final selectedDate = ''.obs;
  final selectedTime = ''.obs;
  final sliderValue = (10.0).obs;
  final dynamicPrice = 189.obs;
 




  String getDate(value) {
    String formattedDate = DateFormat('dd-MM-yyyy').format(value);
    return formattedDate;
  }

  void decressValue() {
    if (sliderValue.value > 10) {
      sliderValue.value--;
    }
  }

  void incressValue() {
    if (sliderValue.value < 1500) {
      sliderValue.value++;
    }
  }

  String getTime(value) {
    String formattedTime24 = DateFormat('HH:mm').format(value);
    return formattedTime24;
  }

  int calculatePrice(int numberOfGuests) {
  const double minPrice = 189;
  const double maxPrice = 299;
  const int maxGuests = 1500;
  const int minGuests = 1;

  // Calculate the price using the linear decrement formula
  double price = maxPrice - ((maxPrice - minPrice) / (maxGuests - minGuests)) * (numberOfGuests - minGuests);

  // Ensure the price is not below the minimum price
  if (price < minPrice) {
    return minPrice.toInt(); // Return the minimum price as an integer
  } else {
    return price.toInt(); // Return the price rounded down to an integer
  }
}
}
