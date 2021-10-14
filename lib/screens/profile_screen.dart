import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simca_movil/services/services.dart';
import 'package:simca_movil/widgets/widgets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final student = Provider.of<StudentService>(context).getStudentAuth();

    return MultiProvider(
      providers: [
           ChangeNotifierProvider(create: (_) => ProgramService(student.id)),
           ChangeNotifierProvider(create: (_) => PersonService(student.person)),
      ],
      child: Scaffold(
          body: Stack(
        children: const [
          ProfileBackground(),
          ProfileHeader(),
        ],
      )),
    );
  }
}
