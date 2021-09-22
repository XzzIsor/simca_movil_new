import 'package:flutter/material.dart';
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
    
    return Scaffold(
        body: Stack(
      children: const [
        BackgroundScreens(),
        HeaderScreen(
          title: 'Pénsum',
          icon: Icons.grading,
        ),
        FormBodyInfoPensum(),
        SizedBox(
          height: 20,
        ),
        RequerimentsPensum()
      ],
    ));
  }
}
