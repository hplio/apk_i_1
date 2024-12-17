import 'package:get/get.dart';

class CustomizedController extends GetxController {
  static CustomizedController get instance => Get.find();

  final List imgString = [
    'assets/image 39.png',
    'assets/image 725.png',
    "assets/image 726.png",
    'assets/image 727.png',
    'assets/image 728.png',
    'assets/image 729.png'
  ];

  final isVag= false.obs;

  final List title = ['Idli Sambar', 'Appam', 'Dosa', 'Wada', 'Wada', 'Wada'];

  final List isAdded = List.generate(6, (_) => false).obs;
}
