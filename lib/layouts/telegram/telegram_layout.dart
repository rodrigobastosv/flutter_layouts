import 'package:flutter/material.dart';
import 'package:flutter_layouts/components/codeview_page.dart';

import 'menu.dart';
import 'talks.dart';

class TelegramLayout extends StatefulWidget {
  @override
  _TelegramLayoutState createState() => _TelegramLayoutState();
}

class _TelegramLayoutState extends State<TelegramLayout>
    with TickerProviderStateMixin {
  bool isDetailsDrawerOpen = false;

  AnimationController controller;
  Animation<Offset> offsetAnimation;

  final pageController = PageController();

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    offsetAnimation = Tween<Offset>(begin: Offset(0, -1), end: Offset(0, 0))
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeIn));
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Telegram',
              style: TextStyle(fontSize: 22),
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Icon(Icons.search),
              ),
            ],
            backgroundColor: Color(0xFF527da3),
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        UserAccountsDrawerHeader(
                          decoration: BoxDecoration(color: Color(0xFF527da3)),
                          currentAccountPicture: CircleAvatar(
                            backgroundImage: AssetImage('assets/rod.jpeg'),
                          ),
                          accountName: Text("Rodrigo Bastos"),
                          accountEmail: Text("rodrigobastosv@gmail.com"),
                          onDetailsPressed: () {
                            if (isDetailsDrawerOpen) {
                              controller.reverse();
                            } else {
                              controller.forward();
                            }
                            setState(() => isDetailsDrawerOpen = !isDetailsDrawerOpen);
                          },
                        ),
                        isDetailsDrawerOpen ? SlideTransition(
                          position: offsetAnimation,
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: AssetImage('assets/rod.jpeg'),
                                ),
                                title: Text("Rodrigo Bastos"),
                              ),
                              ListTile(
                                leading: Icon(Icons.add),
                                title: Text("Adicionar Conta"),
                              ),
                              Divider(),
                            ],
                          ),
                        ) : Container(),
                      ],
                    )

                  ],
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      final menu = menuItems[index];
                      return ListTile(
                          leading: Icon(menu.icon), title: Text(menu.nome));
                    },
                    itemCount: 3),
                Divider(),
                ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      final menu = menuItems[index + 3];
                      return ListTile(
                          leading: Icon(menu.icon), title: Text(menu.nome));
                    },
                    itemCount: 6),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color(0xFF527da3),
            child: Icon(
              Icons.edit,
            ),
          ),
          body: Talks(),
        ),
        CodeviewPage(filePath: 'lib/layouts/telegram/telegram_layout.dart', pageController: pageController,)
      ],
    );
  }
}
