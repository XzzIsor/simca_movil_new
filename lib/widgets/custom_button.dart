import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.label, required this.onPress}) : super(key: key);

  final String label;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Text(label),
      style: ElevatedButton.styleFrom(
        primary: const Color.fromRGBO(32, 107, 181, 1),
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        )
      )
      );
  }
}
