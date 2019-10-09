import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_layouts/components/codeview_page.dart';

import 'emails.dart';

class GmailLayout extends StatelessWidget {
  final scaffolfKey = GlobalKey<ScaffoldState>();
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: <Widget>[
        Scaffold(
          key: scaffolfKey,
          drawer: Drawer(
            child: GmailDrawer(),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/add_email_icon.png'),
            ),
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Card(
                      elevation: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () =>
                                        scaffolfKey.currentState.openDrawer(),
                                    child: Icon(Icons.menu),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Procurar e-mail',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/rod.jpeg'),
                                radius: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Text(
                      'PRINCIPAL',
                      style: TextStyle(letterSpacing: 1.7),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: emailsData.length,
                    itemBuilder: (context, index) {
                      final email = emailsData[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: email.avatarColor,
                              child: Center(
                                child: Text(email.avatarText, style: TextStyle(color: Colors.white),),
                              ),
                            ),
                            title: Text(email.sender),
                            subtitle: Text(email.text, overflow: TextOverflow.ellipsis,),
                            trailing: Column(
                              children: <Widget>[
                                Text(email.time),
                                SizedBox(height: 8),
                                email.isStarred ? Icon(Icons.star, color: Colors.yellow,) : Icon(Icons.star_border, color: Colors.grey),
                              ],
                            )
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        CodeviewPage(filePath: 'lib/layouts/gmail/gmail_layout.dart', pageController: pageController)
      ],
    );
  }
}

class GmailDrawer extends StatelessWidget {
  final mainColor = Colors.black;
  final mainTextStyle = TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                'Gmail',
                style: TextStyle(color: Colors.red, fontSize: 24),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
                MaterialCommunityIcons.getIconData(
                    'checkbox-multiple-blank-outline'),
                color: mainColor),
            title: Text('Todas as Cx. entrada', style: mainTextStyle),
          ),
          Divider(),
          ListTile(
            leading: Icon(FontAwesome.getIconData('inbox'), color: mainColor),
            title: Text('Principal', style: mainTextStyle),
            trailing: Text('6'),
          ),
          ListTile(
            leading: Icon(MaterialIcons.getIconData('people-outline'),
                color: mainColor),
            title: Text('Social', style: mainTextStyle),
            trailing: Chip(
              label: Text('6 novas',
                  style: mainTextStyle.copyWith(color: Colors.white)),
              backgroundColor: Colors.blue,
              padding: EdgeInsets.all(0),
            ),
          ),
          ListTile(
            leading: Icon(Icons.local_offer, color: mainColor),
            title: Text('Promoções', style: mainTextStyle),
            trailing: Chip(
              label: Text('17 novas',
                  style: mainTextStyle.copyWith(color: Colors.white)),
              backgroundColor: Colors.green,
              padding: EdgeInsets.all(0),
            ),
          ),
          ListTile(
            leading: Icon(MaterialCommunityIcons.getIconData('forum-outline'),
                color: mainColor),
            title: Text('Fóruns', style: mainTextStyle),
            trailing: Chip(
                label: Text('11 novas',
                    style: mainTextStyle.copyWith(color: Colors.white)),
                backgroundColor: Colors.purple,
                padding: EdgeInsets.all(0)),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text('TODOS OS MARCADORES', style: mainTextStyle),
          ),
          ListTile(
            leading: Icon(MaterialCommunityIcons.getIconData('star-outline'),
                color: mainColor),
            title: Text('Com estrela', style: mainTextStyle),
          ),
          ListTile(
            leading: Icon(MaterialIcons.getIconData('access-time'),
                color: mainColor),
            title: Text('Adiados', style: mainTextStyle),
          ),
          ListTile(
            leading: Icon(MaterialIcons.getIconData('label-outline'),
                color: mainColor),
            title: Text('Importante', style: mainTextStyle),
          ),
          ListTile(
            leading: Icon(Icons.send, color: mainColor),
            title: Text('Enviados', style: mainTextStyle),
          ),
          ListTile(
            leading: Icon(MaterialCommunityIcons.getIconData('timer'),
                color: mainColor),
            title: Text('Programado', style: mainTextStyle),
          ),
          ListTile(
            leading: Icon(
                MaterialCommunityIcons.getIconData('chevron-right-box-outline'),
                color: mainColor),
            title: Text('Caida de saída', style: mainTextStyle),
          ),
          ListTile(
            leading: Icon(Icons.drafts, color: mainColor),
            title: Text('Rascunhos', style: mainTextStyle),
          ),
          ListTile(
            leading: Icon(MaterialCommunityIcons.getIconData('email-box'),
                color: mainColor),
            title: Text('Todos os e-mails', style: mainTextStyle),
          ),
          ListTile(
            leading:
                Icon(Feather.getIconData('alert-circle'), color: mainColor),
            title: Text('Span', style: mainTextStyle),
          ),
          ListTile(
            leading: Icon(FontAwesome.getIconData('trash-o'), color: mainColor),
            title: Text('Lixeira', style: mainTextStyle),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text('APLICAÇÕES GOOGLE', style: mainTextStyle),
          ),
          ListTile(
            leading: Icon(MaterialCommunityIcons.getIconData('calendar-blank'),
                color: mainColor),
            title: Text('Agenda', style: mainTextStyle),
          ),
          ListTile(
            leading:
                Icon(Ionicons.getIconData('ios-contact'), color: mainColor),
            title: Text('Contatos', style: mainTextStyle),
          ),
          Divider(),
          ListTile(
            leading: Icon(
                MaterialCommunityIcons.getIconData('settings-outline'),
                color: mainColor),
            title: Text('Configurações', style: mainTextStyle),
          ),
          ListTile(
            leading: Icon(Feather.getIconData('help-circle'), color: mainColor),
            title: Text('Ajuda e feedback', style: mainTextStyle),
          ),
        ],
      ),
    );
  }
}
