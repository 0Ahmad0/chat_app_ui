import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main_chat_screen.dart';


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.centerLeft,
            colors: [
              Colors.deepPurple[500],
              Colors.white,
              Colors.white,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BuildMainScreen(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(100.0)
              ),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    scale: 4.5,
                    image: AssetImage('assets/images/mainImage.png')
                  )
                ),
              ),
            ),
            BuildMainScreen(
              color: Colors.deepPurple[500],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100.0)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Lst\'s Content \n witch each other',
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),textAlign: TextAlign.center,),
                  SizedBox(height: 10.0,),
                  Text('Created By Ahmad ALHariri',style: TextStyle(color: Colors.white70),),
                  SizedBox(height: 15.0,),
                  FlatButton(
                    color: Colors.transparent,
                    hoverColor: Colors.deepPurple,
                    onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (ctx)=>MainChatScreen()));
                    },
                    child: Container(
                      width: 150,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(8.0)
                      ),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Let\'s Start',style: TextStyle(color: Colors.white),),
                          Icon(Icons.arrow_forward,color: Colors.white,)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BuildMainScreen extends StatelessWidget {
  final Color color;
  final Widget child;
  final BorderRadius borderRadius;

  const BuildMainScreen({Key key, this.color, this.child, this.borderRadius}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius
      ),
      child: child,
    )
    );
  }
}
