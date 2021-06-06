
import 'package:chat_app_ui/constantes/const.dart';
import 'package:flutter/material.dart';

Container buildContainerStatus(Size size) {
  return Container(
    padding: EdgeInsets.only(left: 10,right: 20),
    child: ListView.builder(
      itemCount: person.length,
      itemBuilder: (ctx,index){
        return person[index]['numberMessage'] != 0?
        ListTile(
          leading: Container(
            padding: EdgeInsets.all(3.0),
            decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                  person[index]['sex'] == 'male'?
                  person[index]['image']+'1.jpg':
                  person[index]['image']+'2.jpg'
              ),
            ),
          ),
          title: Text(person[index]['name']),
          subtitle: Text(person[index]['lastSeen']),
          trailing: Text(person[index]['lastSeen']),
        ): SizedBox();
      },
    ),
  );
}