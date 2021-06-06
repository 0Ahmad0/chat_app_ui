import 'package:chat_app_ui/constantes/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: person.length,
          itemBuilder: (context , index){
            return BuildChats(
              text: 'hello',
              mainAxisAlignment: person[index]['sex'] == 'male'?
                  MainAxisAlignment.start:
                  MainAxisAlignment.end
            );
          },
        )
      ),
    );
  }

  Row BuildChats({String text,MainAxisAlignment mainAxisAlignment}) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0),
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.brown[200],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                    bottomRight: mainAxisAlignment == MainAxisAlignment.start?
                        Radius.circular(20.0):Radius.circular(0.0),
                    bottomLeft: mainAxisAlignment == MainAxisAlignment.end?
                    Radius.circular(20.0):Radius.circular(00.0),
                  )
                ),
                child: Center(child: Text(text)),
              )
            ],
          );
  }
}
