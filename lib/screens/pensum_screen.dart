import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:simca_movil/services/pensum_service.dart';
import 'package:simca_movil/services/program_service.dart';
import 'package:simca_movil/services/services.dart';
import 'package:simca_movil/widgets/info_screens/pensum/form_body_info_pensum.dart';
import 'package:simca_movil/widgets/widgets.dart';

class PensumScreen extends StatefulWidget {
  const PensumScreen({Key? key}) : super(key: key);

  @override
  State<PensumScreen> createState() => _PensumScreenState();
}

class _PensumScreenState extends State<PensumScreen> {
  @override
  Widget build(BuildContext context) {
    final student = Provider.of<StudentService>(context).getStudentAuth();
    return ChangeNotifierProvider(
      create: (_) => ProgramService(student.id),
      child: _PensumScreenBody(),
    );
  }
}

class _PensumScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final programs = Provider.of<ProgramService>(context).programs;

    return programs.isNotEmpty
        ? ChangeNotifierProvider(
            create: (_) => PensumService(programs[0].pensumId),
            child: Scaffold(
                body: Stack(
              children: const [
                BackgroundScreens(),
                HeaderScreen(
                  title: 'Pénsum',
                  icon: Icons.grading,
                ),
                FormBodyInfoPensumDemo(),
                SizedBox(
                  height: 20,
                ),
                RequerimentsPensum()
              ],
            )),
          )
        : const Center(
            child: CircularProgressIndicator(),
          );
  }
}
