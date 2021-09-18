import 'package:flutter/material.dart';
import 'package:simca_movil/widgets/widgets.dart';

class GradesScreen extends StatelessWidget {
  const GradesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundScreens(),
        ],
      )
    );
  }
}