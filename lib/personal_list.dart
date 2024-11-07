import 'package:flutter/cupertino.dart';
import 'package:interactivity_activity/personal_datastruct.dart';
import 'package:interactivity_activity/personal_item.dart';



class PersonalList extends StatelessWidget {
  const PersonalList({super.key, required this.personallist});

  final List<PersonalDataStruct> personallist;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: personallist.length,
      itemBuilder: (ctx,index) => PersonalItem(personallist[index]),
    );
  }
}
