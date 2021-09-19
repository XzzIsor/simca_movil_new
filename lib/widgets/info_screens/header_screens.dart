import 'package:flutter/material.dart';
import 'package:simca_movil/widgets/widgets.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({Key? key, required this.title, required this.icon}) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Container(
        height: 60,
        width: size.width * 0.75,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20), topRight: Radius.circular(20)),
          color: Color.fromRGBO(98, 144, 191, 0.83),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 8),
            Icon(icon, size: 50),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
