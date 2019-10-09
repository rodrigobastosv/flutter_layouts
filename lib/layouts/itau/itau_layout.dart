import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_layouts/components/codeview_page.dart';

class ItauLayout extends StatelessWidget {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: <Widget>[
        Scaffold(
            backgroundColor: Colors.grey[200],
            body: ListView(
              children: <Widget>[
                Card(
                  margin: const EdgeInsets.all(0),
                  elevation: 2,
                  child: Container(
                    height: 80,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 14),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            radius: 26,
                            child: Text(
                              'RV',
                              style: TextStyle(
                                  color: Color(0xffec7404),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(width: 22),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'olá, Rodrigo',
                                    style: TextStyle(
                                        color: Color(0xffec7404),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    'ag 1111 c/c 11111-1',
                                    style: TextStyle(
                                        color: Colors.grey[600], fontSize: 16),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Icon(
                                      SimpleLineIcons.getIconData('bell'),
                                      color: Color(0xffec7404),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Icon(
                                      Octicons.getIconData('search'),
                                      color: Color(0xffec7404),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 30),
                              child: Container(
                                width: 200,
                                child: Text(
                                  'saldo em conta corrente',
                                  style: TextStyle(
                                      fontSize: 28, color: Colors.black54),
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Row(
                                children: <Widget>[
                                  Text('ocultar'),
                                  Icon(Icons.keyboard_arrow_up),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'R\$ 2.013,12',
                            style: TextStyle(
                                fontSize: 24, color: Colors.green[700]),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'cheque especial *',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 12),
                              Icon(
                                Icons.info_outline,
                                color: Colors.blue,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'limite disponível para uso',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        SizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'R\$ 1500,00',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        SizedBox(height: 18),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            '*sujeito a encargos',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black54),
                            overflow: TextOverflow.clip,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(30),
                              child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  'ver extrato',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.blue[700]),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30),
                              child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  'ver detalhes',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.blue[700]),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    elevation: 2,
                  ),
                )
              ],
            ),
            bottomSheet: Container(
              height: 90,
              color: Color(0xffec7404),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white,),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Icon(AntDesign.getIconData('home'), color: Color(0xffec7404),),
                      ),
                    ),
                    MenuItem(icon: Feather.getIconData('align-right'), label: 'extrato'),
                    MenuItem(icon: Icons.attach_money, label: 'transações'),
                    MenuItem(icon: Feather.getIconData('grid'), label: 'serviços'),
                    MenuItem(icon: Feather.getIconData('help-circle'), label: 'ajuda'),
                  ],
                ),
              ),
            ),),
        CodeviewPage(
          filePath: 'lib/layouts/itau/itau_layout.dart',
          pageController: pageController,
        )
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  MenuItem({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: <Widget>[
          Icon(icon, color: Colors.white,),
          SizedBox(height: 2),
          Text(label, style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}
