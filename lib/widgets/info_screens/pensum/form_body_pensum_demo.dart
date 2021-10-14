import 'package:flutter/material.dart';
import 'package:simca_movil/widgets/widgets.dart';

class FormBodyInfoPensumDemo extends StatefulWidget {
  const FormBodyInfoPensumDemo({Key? key}) : super(key: key);

  @override
  State<FormBodyInfoPensumDemo> createState() => _FormBodyInfoPensumDemoState();
}

class _FormBodyInfoPensumDemoState extends State<FormBodyInfoPensumDemo> {
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
                  label: 'SEMESTRE 1',
                  optionList: const ['SEMESTRE 1', 'SEMESTRE 2', 'SEMESTRE 3', 'SEMESTRE 4', 'SEMESTRE 5'],
                ),
                const DropDownScreensOptions(
                  name: 'Cálculo I',
                  credits: '4',
                  description: 'Uwu',
                ),
                const DropDownScreensOptions(
                    name: 'Introducción a La Informática', credits: '2', description: 'Awa'),
                const DropDownScreensOptions(
                    name: 'Introducción a la Ingeniería', credits: '1', description: 'Ewe'),
                const DropDownScreensOptions(
                    name: 'Lab. Intro a la Infomática',
                    credits: '1',
                    description: 'Iwi'),
                const DropDownScreensOptions(
                    name: 'Lectura y Escritura', credits: '1', description: 'Owo'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}