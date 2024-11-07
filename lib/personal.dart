import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interactivity_activity/personal_datastruct.dart';
import 'package:interactivity_activity/personal_list.dart';
import 'new_item.dart';

class Personal extends StatefulWidget {
  const Personal({super.key});

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  //Dummy data
  final List<PersonalDataStruct> _registerData = [
    PersonalDataStruct(
        name: 'Jonard Reyes',
        phonenum: 092314,
        date: DateTime.now(),
        category: Category.beginner),
    PersonalDataStruct(
        name: 'James Bonifacio',
        phonenum: 2141515,
        date: DateTime.now(),
        category: Category.advanced),
    PersonalDataStruct(
        name: 'Lrak Amolos',
        phonenum: 12541251,
        date: DateTime.now(),
        category: Category.intermediate),
    PersonalDataStruct(
        name: 'awts lodi',
        phonenum: 2512515,
        date: DateTime.now(),
        category: Category.advanced),
  ];
  void _addList(PersonalDataStruct personaldata) {
    setState(() {
      _registerData.add(personaldata);
    });
  }

  void _openAddItem() {
    showModalBottomSheet(
      context: context,
      builder: (ctxvar) => NewItem(
        onAddItem: _addList,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Personal Portfolio"),
          //Add a button to the AppBar
          actions: [
            IconButton(
              onPressed: _openAddItem,
              icon: Icon(Icons
                  .add_box_rounded), //you may change your Add button format
            ),
          ],
        ),
        body: Column(
          children: [
            const Text('Personal Portfolio'),
            Expanded(
              child: PersonalList(personallist: _registerData),
            )
          ],
        ));
  }
}
