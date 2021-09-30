import 'package:flutter/material.dart';
import 'package:simca_movil/services/pensum_service.dart';
import 'package:simca_movil/services/services.dart';
import 'package:simca_movil/widgets/widgets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ClassService classes = ClassService();
  ProgramService programs = ProgramService();
  PensumService pensum = PensumService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: const [
        ProfileBackground(),
        ProfileHeader(),
      ],
    ));
  }
}
