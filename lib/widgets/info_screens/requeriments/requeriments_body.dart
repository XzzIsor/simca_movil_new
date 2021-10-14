import 'package:flutter/material.dart';

import '../../widgets.dart';

class RequerimentsBody extends StatelessWidget {
  const RequerimentsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListBodyCustom(
      child: ListView(
        children:[ Column(
          children: const [
            DropDownScreensOptions(
                name: 'Lectura y Escritura', description: 'UWU', credits: '1'),
            DropDownScreensOptions(
                name: 'Cálculo I', description: 'UWU', credits: '4'),
            DropDownScreensOptions(
                name: 'Lectura y Escritura', description: 'UWU', credits: '1'),
            DropDownScreensOptions(
                name: 'Lectura y Escritura', description: 'UWU', credits: '1'),
          ],
        ),]
      ),
    );
  }
}
