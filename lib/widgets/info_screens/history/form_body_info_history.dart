import 'package:flutter/material.dart';
import 'package:simca_movil/widgets/widgets.dart';

class FormBodyInfoHistory extends StatefulWidget {
  FormBodyInfoHistory({Key? key}) : super(key: key);

  @override
  _FormBodyInfoHistoryState createState() => _FormBodyInfoHistoryState();
}

class _FormBodyInfoHistoryState extends State<FormBodyInfoHistory> {
  @override
  Widget build(BuildContext context) {
    return ListBodyCustom(
      child: Column(
        children: [
          DropDownScreensHeader(label: 'Semestre I', optionList: const [
            'Semestre I', 
            'Semestre II',
            'Semestre III'
          ]),
          DropDownScreensOptions(name: 'No sé', description: 'Queti'),
          DropDownScreensOptions(name: 'No sé', description: 'Queti'),
          DropDownScreensOptions(name: 'No sé', description: 'Queti'),
          DropDownScreensOptions(name: 'No sé', description: 'Queti'),
          DropDownScreensOptions(name: 'No sé', description: 'Queti'),
          DropDownScreensOptions(name: 'No sé', description: 'Queti'),
        ],
      )
    );
  }
}