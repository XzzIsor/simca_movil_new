import 'package:flutter/material.dart';

class ProfileOptionsMenu extends StatelessWidget {
  const ProfileOptionsMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        _optionCards(
            Icons.grade_outlined,
            'Notas',
            () => Navigator.pushNamed(context, 'grades'),
            Icons.apps_outlined,
            'Materias',
            () {}),
        _optionCards(Icons.grading, 'Pénsum', (){}, Icons.school, 'Matrícula', () {}),
        _optionCards(
            Icons.alarm_on_outlined, 'Faltas', (){},
            Icons.history_edu_outlined, 'Historia', (){}
        ),
      ],
    );
  }

  TableRow _optionCards(IconData icon, String label, VoidCallback function,
      IconData icon2, String label2, VoidCallback function2) {
    return TableRow(children: [
      _card(icon, label, function),
      _card(icon2, label2, function2),
    ]);
  }

  Widget _card(IconData icon, String label, VoidCallback function) {
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 255, 255, 0.53),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 60,
            ),
            Text(label)
          ],
        ),
      ),
    );
  }
}
