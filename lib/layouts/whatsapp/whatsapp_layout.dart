import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'calls_tab.dart';
import 'camera_tab.dart';
import 'status_tab.dart';
import 'talks_tab.dart';

class WhatsAppLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF085e56),
          leading: null,
          actions: <Widget>[
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 8),
            Icon(Icons.more_vert, color: Colors.white),
            SizedBox(width: 8),
          ],
          automaticallyImplyLeading: false,
          title: Text(
            'WhatsApp',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26),
          ),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            tabs: [
              Container(
                width: 20,
                child: GestureDetector(
                  onTap: () async {
                    await ImagePicker.pickImage(source: ImageSource.camera);
                  },
                  child: Icon(Icons.camera_alt),
                ),
              ),
              Tab(
                child: Row(
                  children: <Widget>[
                    Text('CONVERSAS'),
                    SizedBox(width: 8),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Color(0xFF70a9a4), shape: BoxShape.circle),
                      alignment: Alignment.center,
                      child: Text(
                        '21',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF085e56),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Tab(text: 'STATUS'),
              Tab(text: 'CHAMADAS'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CameraTab(),
            TalksTab(),
            StatusTab(),
            CallsTab(),
          ],
        ),
      ),
    );
  }
}
