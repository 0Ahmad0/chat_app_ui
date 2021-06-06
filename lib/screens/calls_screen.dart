
import 'package:chat_app_ui/constantes/const.dart';
import 'package:flutter/material.dart';

Container buildContainerCalls(Size size) {
  return Container(
    padding: EdgeInsets.only(left: 10,right: 20),
    child: ListView.builder(
      itemCount: person.length,
      itemBuilder: (ctx,index){
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(
                person[index]['sex'] == 'male'?
                person[index]['image']+'1.jpg':
                person[index]['image']+'2.jpg'
            ),
          ),
          title: Text(person[index]['name']),
          subtitle: Text(person[index]['lastSeen']),
          trailing: person[index]['sex'] == 'male'?
          Icon(Icons.phone_callback):
          Icon(Icons.phone_missed_rounded)
        );
      },
    ),
  );
}