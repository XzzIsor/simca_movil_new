import 'package:flutter/material.dart';
import 'package:simca_movil/widgets/widgets.dart';

class FormBodyInfoAbsences extends StatefulWidget {
  const FormBodyInfoAbsences({Key? key}) : super(key: key);

  @override
  _FormBodyInfoAbsencesState createState() => _FormBodyInfoAbsencesState();
}

class _FormBodyInfoAbsencesState extends State<FormBodyInfoAbsences> {
  @override
  Widget build(BuildContext context) {
    return ListBodyCustom(
      child: Column(
        children: [
          DropDownScreensOptions(name: 'Materia Algo', description: 'No sé'),
          DropDownScreensOptions(name: 'Materia Algo', description: 'No sé'),
          DropDownScreensOptions(name: 'Materia Algo', description: 'No sé'),
          DropDownScreensOptions(name: 'Materia Algo', description: 'No sé'),
          DropDownScreensOptions(name: 'Materia Algo', description: 'No sé'),
        ],
      )
    );
  }
}
