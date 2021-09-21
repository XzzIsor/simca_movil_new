import 'package:flutter/material.dart';
import 'package:simca_movil/widgets/info_screens/pensum/form_body_info_pensum.dart';
import 'package:simca_movil/widgets/widgets.dart';

class PensumScreen extends StatelessWidget {
  const PensumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          child: Stack(
            children: const [
              BackgroundScreens(),
              HeaderScreen(
                title: 'Pénsum',
                icon: Icons.grading,
              ),
              FormBodyInfoPensum(),
              RequerimentsPensum()
            ],
          ),
        ),
      ),
    );
  }
}
