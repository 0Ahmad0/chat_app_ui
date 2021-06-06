import 'package:chat_app_ui/constantes/const.dart';
import 'package:chat_app_ui/screens/status_screen.dart';
import 'package:flutter/material.dart';

import 'calls_screen.dart';
import 'chat_screen.dart';


class MainChatScreen extends StatefulWidget {
  @override
  _MainChatScreenState createState() => _MainChatScreenState();
}

class _MainChatScreenState extends State<MainChatScreen> {
  PageController _pageController;
  List<String> contact = [
    'Chats',
    'Status',
    'Calls'
  ];

  int selectedIndex = 0;
  @override
  void initState() {
    _pageController = PageController(
        initialPage: 0
    );
    super.initState();
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.camera_alt_outlined),
          title: Text('Modychat'),
          centerTitle: true,
          actions: [
            Icon(Icons.mode_comment_outlined),
            SizedBox(
              width: 15.0,
            )
          ],
          elevation: 0.0,
          backgroundColor: Colors.deepPurple[500],
        ),
        body: Container(
          width: size.width,
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
              Container(
                padding: EdgeInsets.only(
                    bottom: 20.0
                ),
                width: size.width,
                height: size.width * 0.2,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(80)
                    )
                ),
                child: Center(
                  child: Container(
                    width: size.width * 0.8,
                    height: size.width * 0.15,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[400],
                        borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: contact.length,
                      itemExtent: 100.0,
                      itemBuilder:
                          (ctx,index)=>Center(
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: selectedIndex == index ? Colors.black38: Colors.transparent,
                                borderRadius: BorderRadius.circular(15.0)
                            ),
                            child: Text(contact[index]),
                          )
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(80)
                        )
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0,
                              right: 50.0,
                              left: 25.0
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  'All'+contact[selectedIndex]
                              ),
                              Icon(Icons.filter_list_outlined),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: PageView(
                            onPageChanged: (int page){
                              setState(() {
                                selectedIndex = page;
                              });
                            },
                            controller: _pageController,
                            children: [
                              buildContainerChats(size),
                              buildContainerStatus(size),
                              buildContainerCalls(size),
                            ],
                          ),
                        )
                      ],
                    )
                ),
              )
            ],
          ),
        )
    );
  }

}
