import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simca_movil/models/models.dart';
import 'package:simca_movil/services/services.dart';

import 'package:simca_movil/widgets/widgets.dart';

class SubjectBody extends StatelessWidget {
  const SubjectBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final classes = Provider.of<ClassService>(context).classes;
    final subjects = Provider.of<SubjectsService>(context).subjects;
    final size = MediaQuery.of(context).size;

    final List<Subject> studentSubjects = [];

    Subject findSubject(Classes classes) =>
        subjects.firstWhere((subject) => subject.id == classes.subject);

    for (var element in classes) {
      studentSubjects.add(findSubject(element));
    }

    return ListBodyCustom(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          children: [
            const SubjectHeader(),
            SizedBox(
              height: size.height * 0.55,
              child: studentSubjects.isEmpty ? const Center(child: CircularProgressIndicator(color: Colors.white)) : ListView.builder(
                itemCount: studentSubjects.length,
                itemBuilder: (BuildContext context, int index) {
                  return DropDownScreensOptions(
                      name: studentSubjects[index].name, description: studentSubjects[index].description!, credits: studentSubjects[index].credits.toString(),);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
