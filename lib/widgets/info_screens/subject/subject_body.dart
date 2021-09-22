import 'package:flutter/material.dart';

import 'package:simca_movil/widgets/widgets.dart';

class SubjectBody extends StatelessWidget {
  const SubjectBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListBodyCustom(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          children: [
            SubjectHeader(),
            DropDownScreensOptions(name: 'Cálculo I', description: 'UWU'),
            DropDownScreensOptions(name: 'Introducción a la Informática', description: 'UWU'),
            DropDownScreensOptions(name: 'Introducción a La Ingeniería', description: 'UWU'),
            DropDownScreensOptions(name: 'Lectura y Escritura', description: 'UWU'),
            DropDownScreensOptions(name: 'Laboratorio Ing. Software', description: 'UWU'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ClipRRect(child: Image(image: AssetImage('assets/horario.png'),), borderRadius: BorderRadius.circular(25),),
            )
          ],
        ),
      ),
    );
  }
}
