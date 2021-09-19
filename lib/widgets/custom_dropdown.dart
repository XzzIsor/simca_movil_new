import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({Key? key, required this.color, required this.width, required this.text, required this.options}) : super(key: key);

  final Color color;
  final double width;
  final String text;
  final List<String> options;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: width,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(35)),
        child: Center(
          child: DropdownButton(
            onChanged: (opt) {},
            items: _getOptionsDropdown(),
            hint: Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> _getOptionsDropdown() {
  
    List<DropdownMenuItem<String>> list = [];

    options.forEach((element) {
      list.add(DropdownMenuItem(
        child: Text(element),
        value: element,
      ));
    });

    return list;
  }
}
