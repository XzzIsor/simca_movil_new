import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simca_movil/models/models.dart';
import 'package:simca_movil/services/pensum_service.dart';
import 'package:simca_movil/services/program_service.dart';
import 'package:simca_movil/widgets/widgets.dart';

class FormBodyInfoPensum extends StatefulWidget {
  const FormBodyInfoPensum({Key? key}) : super(key: key);

  @override
  State<FormBodyInfoPensum> createState() => _FormBodyInfoPensumState();
}

class _FormBodyInfoPensumState extends State<FormBodyInfoPensum> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    PensumService pensum = Provider.of<PensumService>(context);

    return pensum.pensum.id != ''
        ? ListBodyCustom(
            child: ListView(children: [
            Column(children: [
              FutureBuilder(
                  future: pensum.getSemesters(),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<String>> snapshot) {
                    return snapshot.hasData
                        ? DropDownScreensHeader(
                            label: snapshot.data![0],
                            optionList: snapshot.data!)
                        : const CircularProgressIndicator();
                  }),
              FutureBuilder(
                  future: pensum.getSubjects(0),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<Subject>> snapshot) {
                    return snapshot.hasData
                        ? SizedBox(
                            height: size.height * 0.50,
                            child: ListView.builder(
                              itemCount: snapshot.data!.length,
                              itemBuilder: (BuildContext context, int index) {
                                return DropDownScreensOptions(
                                  name: snapshot.data![index].name,
                                  description:
                                      snapshot.data![index].description!,
                                  credits:
                                      snapshot.data![index].credits.toString(),
                                );
                              },
                            ),
                          )
                        : const Center(child: CircularProgressIndicator());
                  })
            ])
          ]))
        : const Center(
            child: CircularProgressIndicator(),
          );
  }
}
