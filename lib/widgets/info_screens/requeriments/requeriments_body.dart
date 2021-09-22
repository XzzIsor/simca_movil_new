import 'package:flutter/material.dart';

import '../../widgets.dart';

class RequerimentsBody extends StatelessWidget {
  const RequerimentsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListBodyCustom(
      child: Column(
        children: const [
          DropDownScreensOptions(
              name: 'Lectura y Escritura', description: 'UWU', credits: '1c'),
          DropDownScreensOptions(
              name: 'Cálculo I', description: 'UWU', credits: '4c'),
          DropDownScreensOptions(
              name: 'Lectura y Escritura', description: 'UWU', credits: '1c'),
          DropDownScreensOptions(
              name: 'Lectura y Escritura', description: 'UWU', credits: '1c'),
        ],
      ),
    );
  }
}
