import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class GradeCalculator extends StatelessWidget {
  GradeCalculator({super.key});
  final myGradeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Grade Calculater',
          ),
        ),
        body: Column(children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  controller: myGradeController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      prefixIcon: Icon(
                        Icons.percent,
                        color: Colors.red,
                      )))),
          ElevatedButton(
            onPressed: () {
              int? grade = int.tryParse(myGradeController.text);
              if (grade == null) {
                print("${myGradeController.text} is not a number");
                return;
              }

              if (grade >= 90) {
                print("A");
              } else if (grade >= 80) {
                print("B");
              } else if (grade >= 70) {
                print("C");
              } else if (grade >= 60) {
                print("D");
              } else {
                print("F");
              }
            },
            child: Text("Calculate"),
          )
        ]));
  }
}
