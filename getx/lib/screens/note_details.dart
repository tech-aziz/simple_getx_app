import 'package:flutter/material.dart';

import 'note_list.dart';

// ignore: must_be_immutable
class NoteDetails extends StatefulWidget {
  String appBarTitle;
  NoteDetails({super.key, required this.appBarTitle});

  @override
  State<NoteDetails> createState() => _NoteDetailsState();
}

class _NoteDetailsState extends State<NoteDetails> {
  static final _priorities = ['High', 'Low'];
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  // Initial Selected Value
  String defalutValue = 'Low';

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.titleMedium;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: WillPopScope(
        onWillPop: () => moveToLastScreen(),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  moveToLastScreen();
                },
                icon: const Icon(Icons.arrow_back)),
            title: Text(widget.appBarTitle.toString()),
            centerTitle: false,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 10, top: 15, right: 15),
            child: ListView(
              children: [
                DropdownButton(
                  value: defalutValue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: _priorities.map((String dropDownStringItem) {
                    return DropdownMenuItem(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? valueSelectedByUser) {
                    setState(() {
                      debugPrint(valueSelectedByUser);
                    });
                  },
                  style: textStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 12),
                  child: TextField(
                    controller: titleController,
                    style: textStyle,
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        labelText: 'Title',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 12),
                  child: TextField(
                    controller: titleController,
                    style: textStyle,
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        labelText: 'Description',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {});
                            },
                            child: const Text('Save')),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {});
                            },
                            child: const Text('Delete')),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  moveToLastScreen() {
    return Navigator.pop(context);
  }
}
