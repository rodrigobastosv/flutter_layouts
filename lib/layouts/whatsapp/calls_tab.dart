import 'package:flutter/material.dart';

import 'calls.dart';

class CallsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) => CallTabItem(call: callData[index]),
        separatorBuilder: (context, index) => Divider(),
        itemCount: callData.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_call),
        backgroundColor: Color(0xFF17d825),
      ),
    );
  }
}

class CallTabItem extends StatelessWidget {
  CallTabItem({this.call});

  final Call call;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(call.imageUrl),
      ),
      title: Text(
        call.name,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: <Widget>[
          call.received
              ? Icon(
                  Icons.call_received,
                  size: 16,
                  color: Colors.red,
                )
              : Icon(
                  Icons.call_made,
                  size: 16,
                  color: Colors.green,
                ),
          SizedBox(width: 4),
          Text(
            call.time,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
      trailing: call.callType == CallType.audio
          ? Icon(Icons.videocam, color: Colors.green)
          : Icon(Icons.call, color: Colors.green),
    );
  }
}
