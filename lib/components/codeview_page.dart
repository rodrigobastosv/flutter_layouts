import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:widget_with_codeview/source_code_view.dart';

class CodeviewPage extends StatelessWidget {

  CodeviewPage({this.filePath, this.pageController});

  final String filePath;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SourceCodeView(filePath: filePath),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Row(
            children: <Widget>[
              FloatingActionButton(
                onPressed: () => pageController.previousPage(duration: Duration(milliseconds: 200), curve: Curves.easeIn),
                child: Icon(AntDesign.getIconData('back')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
