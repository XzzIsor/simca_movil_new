import 'package:flutter/material.dart';

class DropDownScreensHeader extends StatefulWidget {
  DropDownScreensHeader({Key? key, required this.label, required this.optionList}) : super(key: key);

  String label;
  List<String> optionList;
  @override
  State<DropDownScreensHeader> createState() => _DropDownScreensHeaderState();
}

class _DropDownScreensHeaderState extends State<DropDownScreensHeader> {
  bool isExpanded = false;
  final TextStyle _textStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20);

  @override
  Widget build(BuildContext context) {
    const double _width = 300;

    double _height = (widget.optionList.length.toDouble() * 25);

    final _optionListView = Column(
      children: [
        Container(
            padding: EdgeInsets.only(left: 10),
            width: _width * 0.90,
            height: _height,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(13, 83, 155, 0.46),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.builder(
                  itemCount: widget.optionList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: Text(
                        widget.optionList[index],
                        style: _textStyle,
                      ),
                      onTap: () {
                        setState(() {
                          isExpanded = !isExpanded;
                          widget.label = widget.optionList[index];
                        });
                      },
                    );
                  }),
            )),
      ],
    );

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 45,
          width: _width,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(42, 86, 167, 0.79),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.label,
                style: _textStyle,
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  icon: const Icon(Icons.arrow_drop_down_outlined))
            ],
          ),
        ),
        isExpanded ? _optionListView : Container(),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
