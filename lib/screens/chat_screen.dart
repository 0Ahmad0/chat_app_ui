
import 'package:chat_app_ui/constantes/const.dart';
import 'package:chat_app_ui/screens/chats_.dart';
import 'package:flutter/material.dart';

Container buildContainerChats(Size size) {
  return Container(
    padding: EdgeInsets.only(left: 10,right: 20),
    child: ListView.builder(
      itemCount: person.length,
      itemBuilder: (ctx,index){
        return ListTile(
          onTap: (){
            Navigator.push(ctx,
            MaterialPageRoute(builder: (ctx)=> Chats()));
          },
          leading: Stack(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  person[index]['sex']=='male'?
                  person[index]['image']+'1.jpg':
                  person[index]['image']+'2.jpg',
                ),
              ),
              person[index]['numberMessage'] != 0?
              Container(
                margin: EdgeInsets.only(left: size.width * 0.08),
                width: 18.0,
                height: 18.0,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(100)
                ),
                child: Center(
                  child: Text(
                      person[index]['numberMessage'].toString(),
                    style: TextStyle(
                      fontSize: 12.0
                    ),
                  ),
                ),
              ):SizedBox()
            ],
          ),
          title: Text(person[index]['name']),
          subtitle: Text(person[index]['lastSeen']),
          trailing: Text(person[index]['lastSeen']),
        );
      },
    ),
  );
}