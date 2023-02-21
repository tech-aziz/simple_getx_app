import 'dart:ui';

import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  List<String> items = [];
  final TextEditingController eCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: eCtrl,
              decoration: const InputDecoration(
                hintText: 'Enter Name',
                labelText: 'Name',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
              ),
              onSubmitted: (text) {
                items.add(text);
                eCtrl.clear();
                setState(() {});
              },
            ),
          ),
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    tileColor: Colors.blue,
                    title: Text(items[index].toString()),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  indent: 12,
                  endIndent: 12,
                  color: Colors.blue,
                  thickness: 1,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
