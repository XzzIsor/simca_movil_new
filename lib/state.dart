import 'package:simca_movil/models/models.dart';

class StateCustom {
  static Student student = Student(
      id: '',
      classes: [],
      email: '',
      history: [],
      password: '',
      person: '',
      programId: '',
      user: '');

  setStudent(Student student) {
    StateCustom.student = student;
  }

  getStudent() {
    return student;
  }
}
