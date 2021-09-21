import 'package:flutter/material.dart';
import 'package:simca_movil/widgets/widgets.dart';

class FormBodyInfoGrades extends StatefulWidget {
  const FormBodyInfoGrades({Key? key}) : super(key: key);

  @override
  State<FormBodyInfoGrades> createState() => _FormBodyInfoGradesState();
}

class _FormBodyInfoGradesState extends State<FormBodyInfoGrades> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 130, left: 15, right: 15),
      child: Container(
        width: double.infinity,
        height: size.height * 0.65,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, 0.35),
            borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DropDownScreensHeader(
                  label: 'PERIODO 2020.1',
                  optionList: ['PERIODO 2020.1, PERIODO 2020.2'],
                ),
                const DropDownScreensOptions(
                  name: 'Ingenieria de Software',
                  grade: 4.0,
                  description: 'Uwu',
                ),
                const DropDownScreensOptions(
                    name: 'Ética', grade: 5.0, description: 'Awa'),
                const DropDownScreensOptions(
                    name: 'Álgrebra Lineal', grade: 4.5, description: 'Ewe'),
                const DropDownScreensOptions(
                    name: 'Estructura de Datos II',
                    grade: 2.0,
                    description: 'Iwi'),
                const DropDownScreensOptions(
                    name: 'Laboratorio ', grade: 3.0, description: 'Owo'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
