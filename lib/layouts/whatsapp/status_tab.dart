import 'package:flutter/material.dart';

import 'status.dart';

class StatusTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => StatusTabItem(status: statusData[index], myStatus: index == 0),
        separatorBuilder: (context, index) {
          if (index == 0) {
            return Container(
              height: 40,
              alignment: Alignment.centerLeft,
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.only(left: 28),
                child: Text('Atualizações recentes', style: TextStyle(
                  color: Color(0xFF6eada3),
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
              ),
            );
          } else {
            return Divider();
          }
        },
        itemCount: statusData.length);
  }
}

class StatusTabItem extends StatelessWidget {

  StatusTabItem({this.status, this.myStatus});

  final Status status;
  final bool myStatus;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(status.imageUrl),
      ),
      title: Text(myStatus ? 'Meu status' : status.name, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      subtitle: Text(myStatus ? 'Toque para atualizar seu status' : status.time, style: TextStyle(color: Colors.black)),
      trailing: myStatus ? Icon(Icons.more_horiz, color: Colors.black,) : null,
    );
  }
}
