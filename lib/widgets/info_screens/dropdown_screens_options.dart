import 'package:flutter/material.dart';

class DropDownScreensOptions extends StatefulWidget {
  const DropDownScreensOptions(
      {Key? key,
      required this.name,
      required this.grade,
      required this.description})
      : super(key: key);

  @override
  State<DropDownScreensOptions> createState() => _DropDownScreensOptionsState();

  final String name;
  final double grade;
  final String description;
}

class _DropDownScreensOptionsState extends State<DropDownScreensOptions> {
  bool isExpanded = false;
  final TextStyle _textStyle = const TextStyle(
      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15);
  double _radius = 15;
  double _radiusAux = 0;
  double _aux = 0;

  @override
  Widget build(BuildContext context) {
    const double _width = 300;
    Color color = widget.grade >= 3.0 ? Colors.green : Colors.red;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 70,
          width: _width,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(200, 194, 204, 1),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(_radius),
                bottomRight: Radius.circular(_radius),
                topLeft: const Radius.circular(15),
                topRight: const Radius.circular(15)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.name,
                style: _textStyle,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  Text(
                    '${widget.grade}',
                    style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    overflow: TextOverflow.ellipsis,
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
                      icon: const Icon(Icons.arrow_drop_down_outlined))
                ],
              )
            ],
          ),
        ),
        isExpanded
            ? Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(200, 194, 204, 1),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                width: _width,
                child: Text(
                  widget.description,
                  style: _textStyle,
                ),
              )
            : Container(),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
