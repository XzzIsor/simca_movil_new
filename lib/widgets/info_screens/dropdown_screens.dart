import 'package:flutter/material.dart';

class DropDownScreens extends StatelessWidget {
  const DropDownScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(bottom: 15),
      height: 40,
      width: 300,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(42, 86, 167, 0.79),
        borderRadius: BorderRadius.circular(15),
      ),
      child: DropdownButton(
        hint: const Text('PERIODO 2020.1',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        items: _getOptionsDropdown(),
        onChanged: (opt) {},
        
      ),
    );
  }

  List<DropdownMenuItem<String>> _getOptionsDropdown() {
    List<String> options = ['Puta', 'La wea'];

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
