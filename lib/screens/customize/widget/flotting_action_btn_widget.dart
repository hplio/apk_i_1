import 'package:flutter/material.dart';

class FloatingAddOnsButton extends StatelessWidget {
  const FloatingAddOnsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, // Allows the pink button to overflow
      children: [
        // Black Pill Container
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.black, // Background color
            borderRadius: BorderRadius.circular(32), // Pill shape
          ),
          child: const Text(
            'Add Ons',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // Pink Circular Button
        Positioned(
          right: -14, 
          top: -8,
          child: Container(
            height: 32,
            width: 32,
            decoration: const BoxDecoration(
              color: Colors.pinkAccent, // Pink color
              shape: BoxShape.circle, // Circular shape
            ),
            child: const Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
