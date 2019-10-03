import 'package:flutter/material.dart';

import 'layouts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Layouts'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: FlutterLayouts()
    );
  }
}

class FlutterLayouts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => layouts[index]['layout'])),
            child: CircleAvatar(
              backgroundImage: AssetImage(layouts[index]['icon']),
            ),
          );
        },
        itemCount: layouts.length,
      ),
    );
  }
}
