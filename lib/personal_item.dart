import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interactivity_activity/personal_datastruct.dart';

class PersonalItem extends StatelessWidget {
  final PersonalDataStruct personal;

  const PersonalItem(this.personal, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [Text(personal.name),
            SizedBox(height: 5,),
            Row(children: [
              Text('\$${personal.phonenum.toStringAsFixed(2)}'),
              Spacer(),
              Row(children: [
                Icon(categoryIcons[personal.category]),
                SizedBox(width: 10),
                Text(personal.formattedDate),
              ],)
            ],)],
        ),
      ),
    );
  }
}
