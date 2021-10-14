import 'package:flutter/material.dart';
import 'package:simca_movil/widgets/widgets.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundScreens(),
          const HeaderScreen(title: 'Historia', icon: Icons.history_edu_outlined),
          FormBodyInfoHistory()
        ],
      ),
    );
  }
}