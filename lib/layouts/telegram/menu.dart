import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Menu {
  IconData icon;
  String nome;

  Menu({this.icon, this.nome});
}

final menuItems = <Menu>[
  Menu(icon: Icons.group, nome: 'Novo Grupo'),
  Menu(icon: AntDesign.getIconData('lock'), nome: 'Novo Chat Secreto'),
  Menu(icon: Entypo.getIconData('megaphone'), nome: 'Novo Canal'),
  //-----------------------------------------------------
  Menu(icon: Icons.person_outline, nome: 'Contatos'),
  Menu(icon: MaterialCommunityIcons.getIconData('message-outline'), nome: 'Mensagens Salvas'),
  Menu(icon: Icons.call, nome: 'Chamadas'),
  Menu(icon: AntDesign.getIconData('adduser'), nome: 'Convidar Amigos'),
  Menu(icon: SimpleLineIcons.getIconData('settings'), nome: 'Configurações'),
  Menu(icon: AntDesign.getIconData('questioncircleo'), nome: 'Perguntas Frequentes')
];