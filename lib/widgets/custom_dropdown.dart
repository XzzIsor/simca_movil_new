import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({Key? key, required this.color, required this.width, required this.text, required this.options}) : super(key: key);

  final Color color;
  final double width;
  final String text;
  final List<String> options;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: widget.width,
        decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(35)),
        child: Center(
          child: DropdownButton(
            borderRadius: BorderRadius.circular(25),
            onChanged: (opt) {},
            items: _getOptionsDropdown(),
            hint: Text(
              widget.text,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> _getOptionsDropdown() {
  
    List<DropdownMenuItem<String>> list = [];

    widget.options.forEach((element) {
      list.add(DropdownMenuItem(
        child: Text(element),
        value: element,
      ));
    });

    return list;
  }
}
