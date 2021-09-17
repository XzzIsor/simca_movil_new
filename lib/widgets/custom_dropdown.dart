import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: 220,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 255, 255, 0.55),
          borderRadius: BorderRadius.circular(35)
        ),
        child: Center(
          child: DropdownButton(
              onChanged: (opt) {}, 
              items:  _getOptionsDropdown(),
              hint: const Text('Ingeniería de Sistemas', style: TextStyle(fontWeight: FontWeight.bold),),
              
          ),
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> _getOptionsDropdown() {
    List<String> _opciones = [
      'Ayuda',
      'Esto no es un meme',
      '*Llora en binario*'
    ];
    List<DropdownMenuItem<String>> list = [];

    _opciones.forEach((element) {
      list.add(DropdownMenuItem(
        child: Text(element),
        value: element,
      ));
    });

    return list;
  }
}
