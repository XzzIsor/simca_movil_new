import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math';

import 'package:simca_movil/models/models.dart';
import 'package:simca_movil/services/services.dart';
import 'package:simca_movil/widgets/widgets.dart';

class FormBodyInfoGrades extends StatefulWidget {
  const FormBodyInfoGrades({Key? key}) : super(key: key);

  @override
  State<FormBodyInfoGrades> createState() => _FormBodyInfoGradesState();
}

class _FormBodyInfoGradesState extends State<FormBodyInfoGrades> {
  @override
  Widget build(BuildContext context) {
    final classes = Provider.of<ClassService>(context).classes;
    final subjects = Provider.of<SubjectsService>(context).subjects;
    final size = MediaQuery.of(context).size;

    final List<Subject> studentSubjects = [];
    final List<int> grades = [];

    Subject findSubject(Classes classes) =>
        subjects.firstWhere((subject) => subject.id == classes.subject);

    for (var element in classes) {
      studentSubjects.add(findSubject(element));
    }

    for (var i = 0; i < studentSubjects.length; i++) {
      grades.add(Random().nextInt(6));
    }

    return ListBodyCustom(
      child: ListView(children: [
        Column(
          children: [
            DropDownScreensHeader(
                label: 'Semestre', optionList: ['Semestre', 'Sapa']),
            SizedBox(
              height: size.height * 0.50,
              child: studentSubjects.isEmpty
                  ? const Center(
                      child: CircularProgressIndicator(color: Colors.white))
                  : ListView.builder(
                      itemCount: studentSubjects.length,
                      itemBuilder: (BuildContext context, int index) {
                        return DropDownScreensOptions(
                          name: studentSubjects[index].name,
                          description: studentSubjects[index].description!,
                          grade: grades[index],
                        );
                      },
                    ),
            ),
          ],
        ),
      ]),
    );
  }
}
