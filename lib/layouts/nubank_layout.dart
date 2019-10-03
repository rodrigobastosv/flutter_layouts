import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NubankLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF81259d),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/nubank-logo.png',
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Rodrigo',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
            SizedBox(height: 48),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 250,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Image.asset('assets/logo_container.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 24.0),
                              child: Image.asset('assets/chart.png'),
                            ),
                            Flexible(
                              child: Container(
                                width: 240,
                                child: Padding(
                                  padding: const EdgeInsets.all(24.0),
                                  child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                        text:
                                        'Você fez 7 compras nos últimos 15 dias, com um total de R\$ 321,72. Sua fatura atual está em  ',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      TextSpan(
                                        text: 'R\$ 733,55.',
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ]),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 32, horizontal: 16),
                          child: SingleChildScrollView(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 20,
                                  width: 8,
                                  decoration: BoxDecoration(
                                    color: Colors.orange[400],
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40.0),
                                      topRight: Radius.circular(40.0),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 8,
                                  color: Colors.blue[400],
                                ),
                                Container(
                                  height: 120,
                                  width: 8,
                                  decoration: BoxDecoration(
                                    color: Colors.green[400],
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(40.0),
                                      bottomRight: Radius.circular(40.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    color: Color(0xFFf7f7f7),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Row(
                        children: <Widget>[
                          Icon(FontAwesomeIcons.utensils),
                          SizedBox(width: 12),
                          Flexible(
                              child: Text(
                                  'Compra mais recente em Empório Gourmet no valor de R\$ 55,47 hoje')),
                          Icon(Icons.arrow_forward_ios, size: 12),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: ThreeDots(dotRadius: 2, selectedIndex: 1),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Option(label: 'Indicar amigos', icon: FontAwesomeIcons.userFriends,),
                          SizedBox(width: 8),
                          Option(label: 'Depositar', icon: Icons.attach_money,),
                          SizedBox(width: 8),
                          Option(label: 'Transferir', icon: Icons.cached,),
                          SizedBox(width: 8),
                          Option(label: 'Pagar', icon: FontAwesomeIcons.barcode,),
                          SizedBox(width: 8),
                          Option(label: 'Teste', icon: Icons.person,),
                          SizedBox(width: 8),
                          Option(label: 'Teste', icon: Icons.person,),
                          SizedBox(width: 8),
                          Option(label: 'Teste', icon: Icons.person,),
                          SizedBox(width: 8),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ThreeDots extends StatelessWidget {

  ThreeDots({this.dotRadius, this.selectedIndex});

  final double dotRadius;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          backgroundColor: selectedIndex == 1 ? Colors.white : Colors.grey,
          radius: dotRadius,
        ),
        SizedBox(width: 6),
        CircleAvatar(
          backgroundColor: selectedIndex == 2 ? Colors.white : Colors.grey,
          radius: dotRadius,
        ),
        SizedBox(width: 6),
        CircleAvatar(
          backgroundColor: selectedIndex == 3 ? Colors.white : Colors.grey,
          radius: dotRadius,
        ),
      ],
    );
  }
}

class Option extends StatelessWidget {

  Option({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 100,
      color: Color(0xFF9645ac),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(icon, color: Colors.white,),
            Text(label, style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w300),)
          ],
        ),
      ),
    );
  }
}