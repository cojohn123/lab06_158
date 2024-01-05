import 'package:flutter/material.dart';
import 'package:lab06_158/hobby.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<Hobby> hobbies = [];

  List _selectedItem = [];
  bool tiktok = false;
  @override
  void initState() {
    super.initState();
    hobbies = Hobby.gethobby();
    print(hobbies);
  }

  List<Widget> createCheckbox() {
    List<Widget> widgets = [];

    for (var hb in hobbies) {
      widgets.add(CheckboxListTile(
        value: hb.value,
        onChanged: (value) {
          setState(() {
            hb.value = value!;

            if (value) {
              _selectedItem.add(hb.name);
            } else {
              _selectedItem.remove(hb.name);
            }
          });
        },
        title: Text(hb.name),
      ));
    }

    return widgets;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hobbies'),
        backgroundColor: Color.fromARGB(31, 10, 193, 248),
      ),
      body: Column(children: createCheckbox()),
    );
  }
}
