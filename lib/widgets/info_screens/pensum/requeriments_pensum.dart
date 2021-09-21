import 'package:flutter/material.dart';
import 'package:simca_movil/widgets/widgets.dart';

class RequerimentsPensum extends StatefulWidget {
  const RequerimentsPensum({Key? key}) : super(key: key);

  @override
  _RequerimentsPensumState createState() => _RequerimentsPensumState();
}

class _RequerimentsPensumState extends State<RequerimentsPensum> {
  double _radius = 15;
  double _aux = 0;
  double _radiusAux = 0;
  bool isExpanded = false;
  final double _width = 400;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.84, left: 15, right: 15),
      child: Container(
        width: _width,
        padding: const EdgeInsets.only(left: 15),
        height: 50,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(98, 144, 191, 1),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(_radius),
              bottomRight: Radius.circular(_radius),
              topLeft: const Radius.circular(15),
              topRight: const Radius.circular(15),
            )),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'REQUISITOS DE GRADO',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        isExpanded = !isExpanded;
                        _aux = _radius;
                        _radius = _radiusAux;
                        _radiusAux = _aux;
                      });
                    },
                    icon: const Icon(Icons.arrow_drop_down_sharp)),
              ],
            ),
            isExpanded
                ? Container(
                    width: _width,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(98, 144, 191, 1),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        )),
                    child: Column(
                      children: const [
                        DropDownScreensOptions(
                            name: 'Introducción a la Informática',
                            description: 'Ay wey',
                            credits: '1c'),
                      ],
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
