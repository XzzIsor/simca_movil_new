import 'package:flutter/material.dart';
import 'package:simca_movil/widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          ProfileBackground(),
          ProfileHeader(),
        ],
      )
    );
  }
}